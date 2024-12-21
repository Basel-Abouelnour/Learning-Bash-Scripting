#!/bin/bash

name="Global Variable"

#function
print_name(){
	local name="Local Variable"
	echo " name is :- < $name > ."
}

print_name #Outputs : name is Local Variable.

echo "name is $name" #Output : name is Global Variable.
