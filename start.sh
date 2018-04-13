#!/bin/bash
# Ask the user for their operating system
echo Please Select The Operating System You are using ?
echo 1. Ubuntu 16.04
echo 2. Linux Mint
echo 3. Elementry OS
echo 4. Windows
read os
#echo Setup Started
if [ $os -eq 1 ]
then
  echo "You Selected Ubuntu, now choose framework"
  echo "1. Core PHP (PHP 7.2)"
  echo "2. Laravel (PHP 7.2)"
  echo "3. Yii-2 (PHP 7.2)"
  echo "4. CodeIgniter (PHP 7.2)"
  echo "5. Zend Framework"
  
  read framework
  
  echo "You Selected $framework"
  if [ $framework -eq 2 ]
  then 
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi 
  elif [ $framework -eq 1 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 3 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 4 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 5 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
  else
  echo "Invalid Option."
  fi
elif [ $os -eq 2 ]
then
 #linux mint
echo "You Selected Linux Mint, now choose framework"
  echo "1. Core PHP (PHP 7.2)"
  echo "2. Laravel (PHP 7.2)"
  echo "3. Yii-2 (PHP 7.2)"
  echo "4. CodeIgniter (PHP 7.2)"
  echo "5. Zend Framework"
  
  read framework
  
  echo "You Selected $framework"
  if [ $framework -eq 2 ]
  then 
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi 
  elif [ $framework -eq 1 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 3 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 4 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 5 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
  else
  echo "Invalid Option."
  fi

 # linux mint
elif [ $os -eq 3 ]
then
  echo "You Selected Elementry OS, now choose framework"
  echo "1. Core PHP (PHP 7.2)"
  echo "2. Laravel (PHP 7.2)"
  echo "3. Yii-2 (PHP 7.2)"
  echo "4. CodeIgniter (PHP 7.2)"
  echo "5. Zend Framework"
  
  read framework
  
  echo "You Selected $framework"
  if [ $framework -eq 2 ]
  then 
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi 
  elif [ $framework -eq 1 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 3 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 4 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
    elif [ $framework -eq 5 ]
  then
    echo "Starting Installation. Please make sure to have an active Internet Connection..."
    echo "Select Environment for Installation "
    echo "1. Development"
    echo "2. Production"
    read dev
    if [ $dev -eq 1 ]
    then
      sh dev.sh
    else
      sh production.sh
    fi
  else
  echo "Invalid Option."
  fi
elif [ $os -eq 4 ]
then
  echo "Windows"
else
  echo "Invalid Input. Please run this command again."
fi