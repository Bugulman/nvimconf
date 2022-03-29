`pip install pynvim`
Dont forget set 
`pip install pynvim`

# recomend install telescope

First of all 'install' choco from sitek

Use the script below, determine where you might want Chocolatey installed if it is not to C:\ProgramData\chocoportable.
Open PowerShell.exe.
Run the following `Set-ExecutionPolicy Bypass -Scope Process -Force;Run .\ChocolateyInstallNonAdmin.ps1.`

`choco install ripgrep`
`choco install fd`
`choco install universal-ctags`
LSP into neovim
`:CocInstall coc-python`

There are two way work with Ipython
with ipy plug
*	open .py-file with nvim
*	Press <leader>jqt to open qtconsole
*	Press <leader>jk to connect to just opened kernel
*	Use <leader>jc to run cell
*	Use <leader>ja to run all cells
But before you should install jupyter, pyqt5 and test in in cmd

## if need you need icons into nerdtree, then set into PowerShell
*	`Set-ExecutionPolicy Unrestricted`
*	clone repo `https://github.com/ryanoasis/nerd-fonts.git`
*	set into shell `.\install.ps1 Hack`
*	`Set-ExecutionPolicy Restricted`
