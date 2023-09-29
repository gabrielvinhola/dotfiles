# dotfiles

## Installing
1. Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
2. Set-Alias -Name vim -Value "C:\Program Files\Neovim\bin\nvim.exe"
3. New-Item -ItemType Junction -Path "C:\Users\user\AppData\Local\nvim" -Target "C:\dev\dotfiles"
4. choco install nerd-fonts-hack
5. choco install git.install
6. choco install mingw
7. choco install ripgrep
8. choco install make
