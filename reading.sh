#!/bin/bash
read count 
co=0 
while [ $co -lt $count ]
do 
	echo $co 
	co=$((co + 1))
done 
	
