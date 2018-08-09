#!/bin/bash

echo "select the version of ubuntu: 
 1)16.04 2)17.10 3)18.04 4)exit "

read n
case $n in
    1) sh ./ubuntu/16.04/framework.sh;;
    2) echo "this is ubuntu 17";;
    3) echo "this is ubuntu 18";;
    4) exit;;
    *) invalid option;;
esac