# Bash scripting
An explained introduction of bash scripting is on: [](https://github.com/bobbyiliev/introduction-to-bash-scripting)  <br />
## Basics
### Structure
In order to execute/run with shell enterpreter, the first line in the script should be:  <br />
````#!/bin/bash````  <br />
This line is called _Shebang_.  <br />
### Comments
If you want to comment a line, you could use '#' sign, and for a block:  <br />
````
: << COMMENT
comment line 1
comment line 2
comment line 3
...
comment line n
COMMENT
````
### Alias
This command allows us to create custom bash commands, where to use it in permanent way, we should write it on the shell profile file.  <br />
**Example:**  <br />
`alias conn="echo 'Total connections on port 80 and 443:' ; netstat -plant | grep '80\|443' | grep -v LISTEN | wc -l"`
Where the output is:  <br />
`Total connections on port 80 and 443: 12`
### Create variables
It is important **you can not have spaces after and before the '=' sign**.
````name="Anna"````  <br />

So, if you want to reference it, you should write:  <br />
````$name```` or ````${name}````  <br />

### Input
For user input we use `read` command where you define the name of the variable where the input will be stored.  <br />
Example:  <br />
````
echo "What is your name?"
read name
echo "Hi there $name"
````
Another way to get the input without using `echo` command is using the `-p` `read`'s parameter:  <br />
````
read -p "What is your name? " name
echo "Hi there $name"
````
### Arrays
To initialize an array by assigning values, they should be separated by space and enclosed in '()'.  <br />
`my_array=("value 1" "value 2" "value 3" "value 4")`  <br />
Then, if you want to acces to a value, you should set the index (0-n).  <br />
**Example:**  <br />
`echo ${my_array[2]}`  <br />
Should print `value 3`.  <br />
**Example 2:**  <br />
`echo ${my_array[@]}`  <br />
Should print all values.  <br />
**Note:** For arrays you should use curly brackets ({}).  <br />

## Structures
### Functions
Functions in programming, allow us to reuse lines of code and/or segment our application.  <br />
To create a function in bash, we use this structure:  <br />
````
function function_name() {
    your_commands
}
````
We also can omit `function` key word.  <br />
To send parameters, we just reference it.  <br />
**Example:**

### Conditionals
#### If Else
````
if [[ condition ]] ; then
    commands
else
    commands
fi
````
#### Switch case
````
case $some_variable in
    pattern_1)
        commands
        ;;
    pattern_2 | pattern_3)
        commands
        ;;
    *)
        default commands
        ;;
esac
````
### Loops
We can use `continue` and `break` commands, which permits stop the loop or start the next iteration.
- `continue`: stops the current iteration and start the next one.
- `break`: ends the current loop.
**Example 1:**  <br />
````
for i in {1..5}
do
    if [[ $i == 2 ]]
    then
        echo "skipping number 2"
        continue
    fi
    echo "i is equal to $i"
done
````
The output will be:  <br />
````
i is equal to 1
skipping number 2
i is equal to 3
i is equal to 4
i is equal to 5
````
**Example 2:**
````
num=1
while [[ $num –lt 10 ]]
do
    if [[ $num –eq 5 ]]
    then
        break
    fi
    ((num++))
done
echo "Loop completed"
````
The output will be:  <br />
#### For
````
for var in ${list}
do
    your_c ommands
done
````
**Example 1:**  <br />
````
users="devdojo bobby tony"
for user in ${users}
do
    echo "${user}"
done
````
**Example 2:**  <br />
````
for num in {1..10}
do
    echo ${num}
done
````
#### While
````
while [[ your_condition ]]
do
    your_commands
done
````
#### Until
````
until [[ your_condition ]]
do
    your_commands
done
````

