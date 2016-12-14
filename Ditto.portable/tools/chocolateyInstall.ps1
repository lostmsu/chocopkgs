﻿$packageName = 'Ditto.portable'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$version = '{{PackageVersion}}'
$version2 = $version.Replace(".","_")
$url = "https://sourceforge.net/projects/ditto-cp/files/Ditto/$version/DittoPortable_$version2.zip/download"
$url64 = "https://sourceforge.net/projects/ditto-cp/files/Ditto/$version/DittoPortable_64bit_$version2.zip/download"

# Kill ditto before updating
Get-Process | Where { $_.name -eq 'ditto' } | Stop-Process

Install-ChocolateyZipPackage $packageName $url $toolsdir $url64
