#!/bin/bash

echo "DON'T BE AFRAID TO FAIL. BE AFRAID NOT TO TRY"

cd ~/CodeProjects/

mkdir $1

cd $1

/usr/bin/env python3 -m venv env

cp ~/Scripts/project/.gitignore ~/CodeProjects/$1

git init

