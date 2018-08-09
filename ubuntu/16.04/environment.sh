#!/bin/bash

echo "Please Choose Environment:  
 1)Development 2)Production 3)exit "

read n
case $n in
    1) sh ./ubuntu/16.04/development.sh;;
    2) echo "Production";;
    3) exit;;
    *) invalid option;;
esac