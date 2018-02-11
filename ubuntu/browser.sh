#!/bin/bash

#installation of google chrome started
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update 
sudo apt-get install google-chrome-stable

echo -e "\e[92m System Setup Completed. If you have facing any issue please report at: https://github.com/riteshsingh1/DevSetup/issues \e[39m"