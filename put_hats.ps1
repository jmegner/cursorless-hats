$versionedFolders = Get-ChildItem -Directory "$env:UserProfile/.vscode/extensions/pokey.cursorless-*"
$latestFolder = ($versionedFolders | %{$_.ToString()} | Measure-Object -Maximum).Maximum
$hatsFolder = "$latestFolder/images/hats"
Copy-Item "$PSScriptRoot/*.svg" "$hatsFolder"