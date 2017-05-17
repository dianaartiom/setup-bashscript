
echo "Installation started."

echo "Installing vim: "
sudo apt-get install vim

echo "Installing Google Chrome: "
apt-get -y install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

echo "Installing git:"
apt-get -y install git

echo "Configuring git:"
git config --global user.email "diana.artiom24@gmail.com"
git config --global user.name "dianaartiom"

add-apt-repository ppa:schumifer/postman -y
apt-get update
apt-get -y install postman

echo "Installing unrar:"
apt-get -y install unrar

echo "Updating packages:"
apt-get update
apt-get upgrade
apt-get dist-upgrade

echo"Installing Java 8:"
#!/bin/bash
#
# Author: JackWhite20
# Description: Script to install Java 8 on ubuntu or debian
#

# No args
if [ $# -eq 0 ]
  then
    echo "Arguments: [debian|ubuntu]"
    exit 1
fi

# Too many args
if [ $# -ge 2 ]
  then
    echo "Arguments: [debian|ubuntu]"
    exit 1
fi

# Debian
if [ "$1" == "debian" ]
then
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
	apt-get update
	apt-get -y install oracle-java8-installer
fi

# Ubuntu
if [ "$1" == "ubuntu" ]
then
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get -y install oracle-java8-installer
fi

echo "Setup ssh:"
apt-get -y install openssh-server
apt-get -y install openssh-client

echo "Installing Oh My Zsh:"
apt-get -y install zsh
apt-get -y install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
sudo shutdown -r 0




