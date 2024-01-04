#!/bin/bash
#read -p "Enter a string " string
#echo "hello $string"
echo "$0"
# Self deletion
# rm -f $0
#
# ARRAYS
# If we use @ in the numeric index, it returns all elements
# If we need to put an space between value and "" to declare the value
my_array=("value1" "value2" "value3" "value4" "value5")
echo ${my_array[@]}
# Slicing
# 0 to x index
echo ${my_array[2]::7} # This is a slice from value on index 2 (0-n)

#IF STATMENTS
# if [[ statement ]] ; then
# 	commands
# else
# 	commands
# fi
# Example: validate if user write the input
read -p "Write some word " input
if [[ -z ${input} ]]
then
	echo "Please write a word!"
fi
# ELIF
# if [[ statement ]] ; then
# 	commands
# elif [[ statement ]] ; then
# 	commands
# else
# 	commands
# fi

# SWITCH CASE
# case $<variable> in
# 	value1)
# 	  commands
# 	  ;;
# 	value2 | value3)
#	  commands
#	  ;;
#	*)
#	  default commands
#	  ;;
# esac

# LOOPS
# FOR
# for var in ${list}
# do
# 	commands
# done
# WHILE
# while [[ condition ]]
# do
# 	commands
# done
users="devdojo bobby tony"
for user in ${users}
do
    echo "${user}"
done
# UNTIL
# until [[ condition ]]
# do
# 	commands
# done
# CONTINUE AND BREAK
# Continue: stop the current iteration and start next iteration
for i in {1..5}
do
   if [[ $i == 2 ]] ; then
      echo "skipping number 2"
      continue
   fi
   echo "i is equal to $i"
done

num=0
while [[ $num -lt 10 ]]
do
    if [[ $num -eq 5 ]]
      then
         break
      fi
    echo "$num"
    ((num++))
done
echo "Loop completed"
