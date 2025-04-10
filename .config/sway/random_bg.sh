#!/usr/bin/env bash

WALLPAPERS="$HOME/.wallpapers"
WALL_COUNT=$(ls -1q $WALLPAPERS | wc -l)

MIN=1
WALL_RANDOM=$(shuf -i $MIN-$WALL_COUNT -n 1)

count=0
for file in $WALLPAPERS/* ; do
	((count+=1))
	if [[ $count -eq $WALL_RANDOM ]] ; then
		echo $file
	fi
done
