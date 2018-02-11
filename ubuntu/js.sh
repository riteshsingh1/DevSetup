#!/bin/bash

#Ubuntu 16.04 JAVASCRIPT Development setup

#install node js 
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

# install build essentials for npm
sudo apt-get install -y build-essential

#install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo -e "\e[92m Npm and yarn installed successfully \e[39m"

echo -e "\e[92m Installing Gulp \e[39m"

# install gulp globally
sudo npm install -g gulp

echo -e "\e[92m gulp installed successfully \e[39m"

echo -e "\e[92m installing bower globally \e[39m"


# install bower globally
sudo npm install -g bower

echo -e "\e[92m bower installed successfully \e[39m"

echo -e "\e[92m installing webpack \e[39m"

# install webpack globally
sudo npm install -g webpack

echo -e "\e[92m webpack installed successfully \e[39m"


wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

echo -e "\e[92m System Setup Completed. If you have facing any issue please report at: https://github.com/riteshsingh1/DevSetup/issues \e[39m"



