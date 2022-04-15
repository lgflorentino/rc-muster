Write-Host "Loading Profile lgflorentino"
Import-Module PSReadline
Import-Module posh-git
Set-PoshPrompt -Theme "$env:LOCALAPPDATA\oh-my-posh\.lgflorentino.omp.json"
