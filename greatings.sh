#!/bin/bash
#this is the first method
echo "Enter your first and last name:"
read first_name last_name

echo "Hello, $first_name $last_name !"

#a second method is using p flag "-p" to give a question to the user with a message
read -p "Enter your age: " age
echo "Your age is $age years old."
