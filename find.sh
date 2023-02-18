#!/bin/bash
ut=$1
for i in $(ls utenza/);
do
	for j in $(cat utenza/$i);
	do
		utente=${j%-*}
		if [ $utente = $ut ];then
			echo " L'alunno $ut si trova in $i"
		fi
	done
done
