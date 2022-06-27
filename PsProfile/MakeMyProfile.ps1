
set-location $env:USERPROFILE

if (!(test-path $env:USERPROFILE\documents\WindowsPowerShell))
    {
        new-item -Name WindowsPowerShell -ItemType Directory -Path $env:USERPROFILE\Documents

    }

if (!(test-path $env:USERPROFILE\documents\PowerShell))
    {
        new-item -Name PowerShell -ItemType Directory -Path $env:USERPROFILE\Documents

    }


#create Profile

copy-item $env:USERPROFILE\git\psmdr\workplace\PsProfile\DefaultProfile.ps1 -Destination $env:USERPROFILE\documents\WindowsPowerShell\Profile.ps1 -Force
copy-item $env:USERPROFILE\git\psmdr\workplace\PsProfile\DefaultProfile.ps1 -Destination $env:USERPROFILE\documents\PowerShell\Profile.ps1 -Force

