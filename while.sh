#!/bin/bash

counter=1 

while [ $counter -le 5 ];
do
	#commands
	echo "counter is at $counter"; counter=$((counter + 1))
done
