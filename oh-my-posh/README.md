# How to setup Oh-My-Posh

After Oh-My-Posh is installed, you need to install a Nerd Font.

    oh-my-posh font install

You get a dropdown list of fonts, choose one, e.g. Meslo.
Details: https://ohmyposh.dev/docs/installation/fonts

After that in Windows Terminal use Settings to set Meslo LGM NF as the Default Font in the Default Profile.

Now download MDR.omp.json from https://github.com/psmdr/workplace/blob/main/oh-my-posh/MDR.omp.json or clone this repo (https://github.com/psmdr/workplace) to your computer.

If cloned you can run:

    copy-item $env:Userprofile\git\psmdr\workplace\oh-my-posh\MDR.omp.json -destination "$env:POSH_THEMES_PATH\MDR.omp.json"

After that add this line to your powershell profile.

    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\MDR.omp.json" | Invoke-Expression

And fix the path ...



