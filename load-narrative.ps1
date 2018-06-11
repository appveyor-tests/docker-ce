$lines = Get-Content .\appveyor.yml

$script:i = 0

function WriteNext ($color) {
    for(;$script:i -lt $lines.Length; $script:i++) {
        if ($lines[$script:i].StartsWith('#')) {
            break
        }
    }

    Write-Host ""
    for(;$script:i -lt $lines.Length; $script:i++) {
        if ($lines[$script:i].StartsWith('#')) {
            Write-Host $lines[$script:i].Substring(2) -ForegroundColor $color
        } else {
            break
        }
    }
    Write-Host ""
}

function _() {
    WriteNext DarkCyan
}

function __() {
    WriteNext Yellow
}
