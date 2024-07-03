$JobFolderLocation = "C:\Users\username\Dropbox\Jobs\"
$TemplateSheetLocation="C:\Users\username\Documents\Templates\JobSheetTemplate.xlsx"

$JobYear = (Get-Date).year
$JobNumberCounter = (Get-ChildItem -Directory -Name "$($JobFolderLocation)\$($JobYear)-*").Count+1

$JobNumberGuess = "$($JobYear)-$(($JobNumberCounter).ToString('000'))"
$JobNumberEntered = Read-Host "New job number [$($JobNumberGuess)]"

if ($JobNumberEntered.Length -lt 1){
    $JobNumber = $JobNumberGuess
} else {
    $JobNumber = $JobNumberEntered.Split([IO.Path]::GetInvalidFileNameChars()) -join '-'
}

New-Item -ItemType Directory -Path $JobFolderLocation -Name $JobNumber
New-Item -ItemType Directory -Path $JobFolderLocation\$JobNumber -Name "$($JobNumber) Documents"
New-Item -ItemType Directory -Path $JobFolderLocation\$JobNumber -Name "$($JobNumber) Emails"
New-Item -ItemType Directory -Path $JobFolderLocation\$JobNumber -Name "$($JobNumber) Images"
Copy-Item -Path $TemplateSheetLocation -Destination "$($JobFolderLocation)\$($JobNumber)\$($JobNumber).xlsx"
