#!/bin/bash

#Ubuntu 16.04 Android Development setup


echo -e "\e[92m Installing JAVA \e[39m"
#install JAVA
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install java-common oracle-java8-installer

# set Java environment variable
sudo apt-get install oracle-java8-set-default

source /etc/profile


echo -e "\e[92m Installing sqlite \e[39m"
# install sqlite
sudo apt-get install sqlite3

echo -e "\e[92m Installing Android Studio \e[39m"

# install android studio
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

sudo apt update 

#install umake
sudo apt install ubuntu-make

# install android
sudo umake android --accept-license