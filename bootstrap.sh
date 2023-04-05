#!/bin/bash

# Update all existing dependencies
sudo apt-get update

# Install tools
log_file=~/install_progress_log.txt

if type -p zsh > /dev/null; then
    echo "zsh installed" >> $log_file
else
    echo "zsh failed to install" >> $log_file
fi

sudo apt-get install zsh-syntax-highlighting


sudo apt-get -y install curl
if type -p curl > /dev/null; then
    echo "curl Installed" >> $log_file
else
    echo "crul FAILED TO INSTALL!!!" >> $log_file
fi



# install git-completion and git-prompt
cd ~/
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
mv ~/git-completion.bash ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "git-completion and git-prompt Installed and Configured" >> $log_file



sudo apt-get -y install python-pip
if type -p pip > /dev/null; then
    echo "pip Installed" >> $log_file
else
    echo "pip FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install python
if type -p python > /dev/null; then
    echo "python Installed" >> $log_file
else
    echo "python FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install python3
if type -p python3 > /dev/null; then
    echo "python3 Installed" >> $log_file
else
    echo "python3 FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install tmux
if type -p tmux > /dev/null; then
    echo "tmux Installed" >> $log_file
else
    echo "tmux FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install python-dev

# sudo apt install tmux
# sudo apt install vim
# sudo apt install nvim
# sudo apt install helix

# Give summary of what has been installed
echo -e "\n====== Summary ======\n"
cat $log_file
echo
rm $log_file