#!/bin/bash

echo "DON'T BE AFRAID TO FAIL. BE AFRAID NOT TO TRY"

cd ~/CodeProjects/

NAME=$1
TYPE=$2

mkdir $NAME

cd $NAME

/usr/bin/env python3 -m venv env

cp ~/Scripts/project/.gitignore ~/CodeProjects/$NAME

git init

if [ "$TYPE" == "-w" ]; then
	
	cp ~/Scripts/project/app.py ~/CodeProjects/$NAME

	echo "Server template added to project"

	cp ~/Scripts/project/launchwebproject.sh ~/CodeProjects/$NAME

	cp ~/Scripts/project/launchworkterminal.sh ~/CodeProjects/$NAME

	#./launchwebproject.sh $NAME

	io.elementary.terminal -w ~/CodeProjects/$NAME -e ./launchwebproject.sh -n


	io.elementary.terminal -w ~/CodeProjects/$NAME -e ./launchworkterminal.sh -n

	echo "Done building the project"

else

	io.elementary.terminal -w ~/CodeProjects/$NAME -n

	echo "Done building the project"
#	io.elementary.terminal -w ~/Scripts/ -e ./launchproject.sh -n

fi

