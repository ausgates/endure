#!/bin/bash

name=read -p "Name: "
difficulty=read-p "Difficulty: "

if [ -z "$name" || -z "$difficulty" ]; then
    echo "What?"
else
    cd app/bin/lib
    ruby main.rb $name $difficulty
fi
