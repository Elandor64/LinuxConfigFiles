#!/bin/bash
echo Start config process...

#config
echo ""
echo -e "\e[96mBeginning Configuration Setup\e[39m"
mv bashrc ~/.bashrc
mv nanorc ~/.nanorc
echo -e "Configuration: \e[32mSuccess\e[39m"

#programs
echo ""
echo -e "\e[96mInstalling essential Programs\e[39m"
while read F  ; do
        sudo apt install $F
done <./essential_programs
echo -e "Program Installation: \e[32mSuccess\e[39m"


#Code
echo ""
echo -e "\e[96mBeginning Code Setup\e[39m"
mkdir ~/Code
git clone https://github.com/Elandor64/GithubManager.git ~/Code/GithubManager/
echo -e "Code: \e[32mSuccess\e[39m"

#clean
echo ""
echo -e "\e[96mBeginning Cleanup\e[39m"
cd ..
rm -rf LinuxConfigFiles
echo -e "Cleanup: \e[32mSuccess\e[39m"

echo ""
echo Success!
