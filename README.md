[#](#) nvimconf
Dont forget set pip install pynvim

recomend install telescope

Firs of all 'install' choco from sitek

Use the script below, determine where you might want Chocolatey installed if it is not to C:\ProgramData\chocoportable.
Open PowerShell.exe.
Run the following Set-ExecutionPolicy Bypass -Scope Process -Force;
Run .\ChocolateyInstallNonAdmin.ps1.

choco install ripgrep
choco install fd
choco install universal-ctags
:CocInstall coc-python

There are two way work with Ipython
1)with press F5 key
2)with ipy plug
	open .py-file with nvim
	Press <leader>jqt to open qtconsole
	Press <leader>jk to connect to just opened kernel
	Use <leader>jc to run cell
	Use <leader>ja to run all cells
But before you should install jupyter, pyqt5 and test in in cmd
