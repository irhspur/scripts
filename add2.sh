#!/bin/bash

a=""

for word in "$@";
do
	#echo $a
	a=$a$word"2 "
done
echo $a | xclip -selection clipboard
