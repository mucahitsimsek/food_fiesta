#!/bin/bash

if [ "$1" = "force" ]
then
    flutter pub run build_runner build  --delete-conflicting-outputs
else
    flutter pub run build_runner build
fi