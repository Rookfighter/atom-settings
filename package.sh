#!/bin/bash -e

usage()
{
    echo "usage: ./package.sh install|backup"
}

if [ $# != 1 ]
then
    echo "Error. Wrong amount of arguments."
    usage
    exit 1
fi

case "$1" in
    "install")
        apm install --packages-file package.list
        ;;
    "backup")
        apm list --installed --bare > package.list
        ;;
    *)
        echo "Error. Invalid argument $1"
        usage
        exit 1
        ;;
esac
