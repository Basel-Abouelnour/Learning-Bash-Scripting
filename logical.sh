#!/bin/bash

age=21

if [ $age -lt 13 ] || [ $age -gt 65 ];
then
	echo "You are eligible for a discount ticket."
fi
