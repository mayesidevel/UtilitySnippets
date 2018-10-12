﻿# This is non-recursive, and only deletes leaf-node (dead-end) empty folders. It will need to be run repeatedly for a series of folders emptying on deletion of their empty child folders.
# Un-comment the second to last line for just a listing, and un-comment the last line for actual deletion.

$path = "C:\TestPath"

(Get-ChildItem $path -recurse | Where-Object {$_.psiscontainer -eq $true}) | Where-Object {($_.GetFiles().Count -eq 0) -and ($_.GetDirectories().Count -eq 0)} | 
Select-Object FullName 
#foreach($_){Remove-Item $_.FullName}