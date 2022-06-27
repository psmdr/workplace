# Git Cheat Sheat

## Setup Git

Let's create folders ...

    set-location $env:UserProfile
    new-item -name git -itemtype directory

s

    git config --global user.name "Max Droege"
    git config --global user.email mail@mdroege.de
    git config --global init.defaultBranch main
    set-location $env:Userprofile
    set-location Git
    git clone https://github.com/psmdr/workplace

