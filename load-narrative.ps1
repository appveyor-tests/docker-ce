$lines = Get-Content .\appveyor.yml

$script:i = 0

function _() {
    
    for(;$script:i -lt $lines.Length; $script:i++) {
        if ($lines[$script:i].StartsWith('#')) {
            break
        }
    }

    for(;$script:i -lt $lines.Length; $script:i++) {
        Write-Host ""
        if ($lines[$script:i].StartsWith('#')) {
            Write-Host $lines[$script:i].Substring(2) -ForegroundColor DarkCyan
        } else {
            break
        }
        Write-Host ""
    }
}
