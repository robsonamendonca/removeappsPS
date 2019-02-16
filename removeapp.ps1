# Privacy Script for Windows 10 in PowerShell
# Written by R Scharmen

# Remove unwanted Apps
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *windowscamera* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *soundrecorder* | Remove-AppxPackage
Get-AppxPackage *stickynotes* | Remove-AppxPackage
Get-AppxPackage *gethelp* | Remove-AppxPackage
Get-AppxPackage *messaging* | Remove-AppxPackage

#Set Registry
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
$Name = "AllowTelemetry"
$value = "0"

Set-ItemProperty -Path $registryPath -Name $name -Value $value 
Get-ItemProperty -Path $registryPath -Name AllowTelemetry

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
$Name = "AllowCortana"
$value = "0"

Set-ItemProperty -Path $registryPath -Name $name -Value $value 
Get-ItemProperty -Path $registryPath -Name AllowCortana

#Change ConnectedUserExperiance in Services
Set-Service -Name "DiagTrack" -StartupType Disabled
Get-Service DiagTrack | Select-Object Name, StartType, Status


# SIG # Begin signature block
# MIIFpQYJKoZIhvcNAQcCoIIFljCCBZICAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUvlz50izsT7k4KBb6R4Zx6Dk7
# Jo2gggM5MIIDNTCCAh2gAwIBAgIQV6OviSVWMKBHtppVKJc2sDANBgkqhkiG9w0B
# AQsFADAhMR8wHQYDVQQDDBZyb2dlci5zY2hhcm1AZ21haWwuY29tMB4XDTE5MDIx
# NjE2NTA1NFoXDTIwMDIxNjE3MTA1NFowITEfMB0GA1UEAwwWcm9nZXIuc2NoYXJt
# QGdtYWlsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN6JTVgA
# WlXwl3lDmfBHphC/mZGbr81SGPzf0wrEfLWncX3N8zs0cyj3dvnzQ2dRsfUPIH5u
# Wu5EK4WLFdZEA3UPD0FLTV76tLKeyMZ1fIW03D7Xlk4nkuEdFZygBKagE/J0gT+/
# 77+j2XqpOAd/MKH3WcdmpfDm0AfnsXUG4nSQ5x8+zokmlpI23Srl/YYgvJiQO+Zd
# XyMiFBU1NZV5rFnXXSSaGUszQFeJWPCsOJHB7JY+rIV6GaAZ+v7dx+buOXvTK7la
# IE3ZOF4Gtm3hoVL81hWXBydQ8Hfw3sXJBT5I9SvI5GtshqohQH6PO05Cz25To0Uz
# TDkcxZYpL8fyuAUCAwEAAaNpMGcwDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoG
# CCsGAQUFBwMDMCEGA1UdEQQaMBiCFnJvZ2VyLnNjaGFybUBnbWFpbC5jb20wHQYD
# VR0OBBYEFJhimn3c4cejLdcl9mFNiwJ/anG0MA0GCSqGSIb3DQEBCwUAA4IBAQBB
# O6keSelxz/dtz+Yw0GVZLuznzJeiwxdynQWj4yBJ/zMBpJecJK+GslC8H1YZ+w4m
# dPtJW51ZGE8yAdeG2CflAmuR4m7JOkQS6fNk++mWLQ90b3m70MrcMDl8vZDJiian
# KZMN6plaQ/9ml5yS0zW1TSGkEgiut3LiblZzq7dj9CkxpnwTIYM86o65ahTxgYhi
# ueiLXBJwVTb1WzjuBty/Wg0IexB+vfgus4Iu6VUecZSp76ZNqBM4TXbSN2o2MpWY
# Jkfm8II2AR8/2HMa089tMB5bzL1LZ5l4V0yy9bQf8odrWKqGwl8kyACAi0SaHhrr
# B7X6A1iU/6pktfXRsXx5MYIB1jCCAdICAQEwNTAhMR8wHQYDVQQDDBZyb2dlci5z
# Y2hhcm1AZ21haWwuY29tAhBXo6+JJVYwoEe2mlUolzawMAkGBSsOAwIaBQCgeDAY
# BgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3
# AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEW
# BBTXlD/B5lZjbmBZYGkwa7l92meIpjANBgkqhkiG9w0BAQEFAASCAQDKA07dLbrN
# ZjG4zzi7AYbsCFKc6n4jpLGAVh/GPQfoxWDt+vdYdGzhYH64zKnbtgFPYlkIh0lg
# EOX0k3D3vaUejVwJLTq2gP62gI6u38T/sDCtMptqnIhR0saVCCG/Xsq6bixCTREu
# wjD9VFBbgHXJb9vOm9ycNbJHryLKCEWhzu65rNJyjMd3XhTMLTTjyItspbD98AiR
# dTaTujCKFluJP4aOsUVumVJ0+vFCAoX7HCQJrJ/RsujxHADP8FYXWrkxfy+t9XV1
# JQE8QhrfHT4JgnfTSsRpP7iv3aen+/Yq3G/Peruw3wrF/sKkFMhsO5dWOSjWRkh9
# xbxBL/iOA5NY
# SIG # End signature block
