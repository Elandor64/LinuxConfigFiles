#!/bin/bash
echo Start config process...

#config
echo ""
echo -e "\e[96mBeginning Configuration Setup\e[39m"
cp ../Generic/.bashrc ~/.bashrc
cp ../Generic/.nanorc ~/.nanorc
cp ../Generic/.vimrc ~/.vimrc
cp ../Generic/.zshrc ~/.zshrc
echo -e "Configuration: \e[32mSuccess\e[39m"

#update
sudo apt update

#programs
echo ""
echo -e "\e[96mInstalling essential generic Programs\e[39m"
while read F  ; do
        sudo apt install -S $F
done <../Generic/essential_programs
echo -e "Program Installation: \e[32mSuccess\e[39m"

#arch specific
echo ""
echo -e "\e[96mInstalling debian-like specific Programs\e[39m"
while read F  ; do
        sudo apt install -S $F
done <./specific_programs
echo -e "Program Installation: \e[32mSuccess\e[39m"

#vim setup
echo ""
echo -e "\e[96mConfiguring VIM\e[39m"
mkdir ~/.vim_runtime
mkdir ~/.vim_runtime/vimrcs
cp ../vim/* ~/.vim_runtime/vimrcs/
echo -e "VIM Configuration: \e[32mSuccess\e[39m"

#Code
echo ""
echo -e "\e[96mBeginning Code Setup\e[39m"
mkdir ~/Code
git clone https://github.com/Elandor64/GithubManager.git ~/Code/GithubManager/
echo -e "Code: \e[32mSuccess\e[39m"

#clean
#echo ""
##echo -e "\e[96mBeginning Cleanup\e[39m"
#cd ..
#rm -rf LinuxConfigFiles
#echo -e "Cleanup: \e[32mSuccess\e[39m"

echo ""
echo Success! Consider running the GithubManager next!
