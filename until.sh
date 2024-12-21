#!/bin/bash

counter=5

until [ $counter -lt 1 ];
do
	echo "Counter is at $counter"
	counter=$((counter - 1 ))
done
