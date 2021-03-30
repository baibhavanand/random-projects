#!/usr/bin/env bash
# Authors: Baibhav Anand Jha

echo "

   _  __           _____               
  / |/ /_ ____ _  / ___/_ _____ ___ ___
 /    / // /  ' \/ (_ / // / -_|_-<(_-<
/_/|_/\_,_/_/_/_/\___/\_,_/\__/___/___/
                                       
Coded with <3 by @spongebhav                                       
"
is_bsd=`grep -V | grep BSD`

if [[ $is_bsd == *"BSD"* ]]; then
randnum=`jot -r 1  1 100`
	else
randnum=`shuf -i 1-100 -n 1`
fi


score=0
while (( usernum != randnum )); do
	echo "
	"
echo -n "Enter a number between 1 to 100: "; read usernum
echo "
"
score=$(($score + 1))
	if (( usernum < randnum )); then
		echo "Try Higher
		"
	elif (( usernum > randnum )); then
		echo "Try Lower
		"
	fi
done

echo "Congrats, You guessed it correctly. Your Score is: $score
"
