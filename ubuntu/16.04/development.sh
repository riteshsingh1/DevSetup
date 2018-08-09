#!/bin/bash

echo "Please Choose Stack:  
 1)LAMP(php 7.1) 2)LEMP(PHP 7.1) 3)LEMP(PHP 7.1) with phpmyadmin 4)LAMP(PHP 7.1) with phpmyadmin 5)
 5)LAMP(php 7.2) 6)LEMP(PHP 7.2) 7)LEMP(PHP 7.2) with phpmyadmin 8)LAMP(PHP 7.2) with phpmyadmin 5)
 :"

read n
case $n in
    1) sh ./ubuntu/16.04/development.sh;;
    2) echo "Production";;
    3) echo "lemp";;
    4) echo "lemp";;
    5) echo "5";;
    6) echo "6";;
    7) echo "7";;
    8) echo "8";;
    *) invalid option;;
esac