#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome!!!, please enter your name"
read name
echo "hello $name, it is nice to meet you!!!"

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
echo "Please enter the operation that you would like to make"
echo "Add"
echo "Subtract"
echo "Exit"

# Then, capture the user selection.
read operation
# If the selection matches a supported operation, execute the operation.
 case $operation in
   "Add"| "add")
     echo "Enter the numbers that you want to add"
     read first second
     
     ;;
   "Subtract" | "subtract")
     echo "What would you like to subtract"
     ;;
   *)
     echo "Whoops, this program does not support $operation"
     ;;
esac
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
