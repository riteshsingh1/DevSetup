#!/bin/bash

function ubuntu()
{
    sh ./ubuntu.sh
}

echo 'Welcome to DevSetup. Please Select which operating System you are using ? '
options=("Ubuntu" "Fedora" "Cent Os" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ubuntu")
            ubuntu
            break;
            ;;
        "Fedora")
            echo "you chose choice 2"
            ;;
        "Cent Os")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done