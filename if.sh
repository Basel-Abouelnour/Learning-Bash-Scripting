#!/bin/bash

age=19


if [ $age -ge 18 ] && [ $age -lt 65 ];
then
	echo "You are an adult of working age."
elif [ $age -ge 13 ];
then
	echo "You are a teenager."
else 
	echo "You are a minor."
fi
