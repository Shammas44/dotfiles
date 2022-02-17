#!/usr/local/microsoft/powershell/7/pwsh
$indexFilePath = '~/Google Drive/vimwiki/index.md' 
$cwd = pwd
Set-Location '~/Google Drive/vimwiki/'
$items = Get-ChildItem -path "~/Google Drive/vimwiki/*.md" -Recurse -Exclude "index.md" | Sort-Object
$lastDirectory = ''
Clear-Content $indexFilePath
Add-Content -Path $indexFilePath -Value '```' 
$name = figlet 'GDRIVE'
Add-Content -Path $indexFilePath -Value $name 
Add-Content -Path $indexFilePath -Value '```'
foreach ($item in $items) {
    $currentDirectory = $item.Directory.name
    if ($currentDirectory -ne $lastDirectory) {
        Add-Content -Path $indexFilePath -Value "`n# $($currentDirectory)"  
    }
    $lastDirectory = $currentDirectory
    $path = $item.FullName | Resolve-Path -Relative
    $string = "[$($item.BaseName)]($($path))"
    Add-Content -Path $indexFilePath -Value $string 
}
Set-Location $cwd
