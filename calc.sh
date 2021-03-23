#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome!!!, please enter your name:"
read name
echo "hello $name, it is nice to meet you!!!"

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
while true
do  
echo "Please type the operation that you would like to make or type Exit to quit:"
echo "Add"
echo "Subtract"
echo "Exit"

# Then, capture the user selection.
read operation
# If the selection matches a supported operation, execute the operation.

 case $operation in
   "Add"| "add")
     echo "Enter the numbers that you want to add"
     echo "Enter first number"
     read first
     echo "Enter second number"
     read second
     let sum=$first+$second
     echo "the result is $sum"

     ;;
   "Subtract" | "subtract")
     echo "Enter the numbers that you want to subtract"
     echo "Enter first number"
     read first
     echo "Enter second number"
     read second
     let sub=$first-$second
     echo "the result is $sub"
     ;;
    "Exit" | "exit")
    echo "See you later $name"
    exit
    ;;
   *)
     echo "Whoops!!!, this program does not support $operation"
     ;;
esac
done
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
