#!/bin/bash

echo "Please Choose Framework:  
 1)Laravel 2)Yii 3)CodeIgniter 4)Core PHP 5)exit "

read n
case $n in
    1) sh ./ubuntu/16.04/environment.sh;;
    2) echo "this is Yii ";;
    3) echo "this is CodeIgniter";;
    4) echo "this is Core PHP";;
    5) exit;;
    *) invalid option;;
esac