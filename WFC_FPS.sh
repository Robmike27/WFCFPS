#!/bin/sh
exec "$@"

IN_DIR=$(ls | grep "TWFC")
FPS_DIR=""
IS_ON=$(pidof TWFC.exe)

if [ -n $IN_DIR]
then
	echo "TWFC_FOV__FPS_Tool.exe not found!"
else
	echo "TWFC_FOV__FPS_Tool.exe found!"
	FPS_DIR=$(readlink -f TWFC_FOV__FPS_Tool.exe)
fi

env WINEESYNC=1 protontricks -c "wine $FPS_DIR" 42650

