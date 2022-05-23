#! /bin/bash

WATCH=0
DELETE=0

while getopts wd FLAG; do
    case $FLAG in
        w)
            WATCH=1
            ;;
        d)
            DELETE=1
            ;;
    esac
done

if [ $WATCH == 1 ]
then
    if [ $DELETE == 1 ]
    then
        flutter packages pub run build_runner watch --delete-conflicting-outputs
    else
        flutter packages pub run build_runner watch
    fi
else
    if [ $DELETE == 1 ]
    then
        flutter packages pub run build_runner build --delete-conflicting-outputs
    else
        flutter packages pub run build_runner build
    fi
fi