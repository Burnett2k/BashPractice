# BashPractice

Anything you can run on the command line, you can run in a script and it will do exactly the same thing.

If you can already do some commands on the command line, then you probably know more about scripting than you realize.

Scripts are entered into a plain text file and then invoked.

Currently working through [this tutorial](https://ryanstutorials.net/bash-scripting-tutorial/bash-script.php) 

## Execution:
Before running a bash script, it must have the execution permission set. If you forget to add the permission, you will get an error.

## To add execute permissions:

```
chmod 755 hello-world.sh
```

## To check permission on a script:

**TODO** Add more explanation and commands here

## To run hello-world.sh
( It is important to understand the dot ( . ) is actually a reference to your current directory. e.g. ./hello-world.sh)

```
./hello-world.sh
```

## $PATH : What is it?
When you type a word on the command line Bash tries to find it in a series of directories stored in a variable called $PATH

**TODO** add section explaining how to add to your path variable

to get the value of $PATH, you can use **echo**  (directories are seprated by the **:** symbol)
```bash
echo $PATH
```

* Bash only looks in the $PATH directories and doesn't.
* It will look through those directories in order and execute the first instance of the program or script that it finds.
* The $PATH variable is an individual user variable so each user on a system may set it to suit themselves.

## Shebang (#!): What is it?

* Is where you point to the path of the interpreter of the bash script
* Must be on the very first line of the script

## Formatting

* A single space can totally ruin a script so be really careful how you write them
* Try to use indentation and code formatting to reduce the chance of formatting errors

## Variables

Before Bash interprets (or runs) every line of our script it first checks to see if any variable names are present. For every variable it has identified, it replaces the variable name with its value

### Setting a variable

When setting a variable, just give it a name. Formatting is important (no spaces)

```
myvariable=hello
```

### Reading a variable from user input

Use the read command followed by the variable name

```bash
read myvariable
```

Two commonly used options
* -p which allows you to specify a prompt and 
* -s which makes the input silent

Reading multiple variables from user input (bash will separate each item by spaces and fill in the variables in order. If the user passes in more items than expected, all of the remaining items are added to the last variable)

```bash
read var1 var2 var3
```

### Exporting a variable

Since scripts run in their own processes, if you want to have a script call another one, you have to export the variables so they are accessible. Use the **export** keyword to export a variable.

```bash
export var1
```

## Command Line Arguments

Passing arguments into a command. To refer to them, use $1 for the first command, $2 for the second, and so forth.

### System variables
* $0 - The name of the Bash script
* $1 - $9 - The first 9 arguments to the Bash script
* $# - How many arguments were passed to the Bash script
* $@ - All the arguments supplied to the Bash script
* $? - The exit status of the most recently run process
* $$ - The process ID of the current script
* $USER - The username of the user running the script
* $HOSTNAME - The hostname of the machine the script is running on
* $SECONDS - The number of seconds since the script was started
* $RANDOM - Returns a random number
* $LINENO - Returns the current line number
* $PWD - Returns a path to the current working directory

## Piping

Piping is a way to pass data from one command to another for manipulation or editing.

This command runs the ls command which is passed into the head command which grabs the first 3 items
```bash
ls | head -3
```

Tip: write out your pipes incrementally so that you don't end up in a bad state and have no idea which piece is behaving unexpectedly. 

## Let

let is a builtin function of Bash that allows for simple arithmetic

```bash
let a=5+4
```

## Length of a variable

```bash
a = 'Hello World'
echo ${#a}
```

## STDIN , STDOUT, & STDERR

**TODO** Will add more information once I understand this concept better

## If Statements

If statements are pretty simple. Starts with if and the condition is within brackets. An else can be added and the if statment ends with the fi keyword.

* the else block is optional
* elif can be used as an else if statement

basic syntax (if / else)
```
if [<some test>]
then
    <commands>
else 
    <other commands>
fi
```

basic syntax (if / else if)
```
if [<some test>]
then
    <commands>
elif [ <some test> ]
    <other commands>
fi
```

The parts within the brackets [] are actually a reference to the command **test**. This means you can test your if statement logic using the test command before even writing the if statement. 

```bash
test 001 -eq 1
```

The operators are listed below

### Operators


* ! EXPRESSION - The EXPRESSION is false.
* -n STRING - The length of STRING is greater than zero.
* -z STRING	- The lengh of STRING is zero (ie it is empty).
* STRING1 = STRING2	- STRING1 is equal to STRING2
* STRING1 != STRING2 - STRING1 is not equal to STRING2
* INTEGER1 -eq INTEGER2	- INTEGER1 is numerically equal to INTEGER2
* INTEGER1 -gt INTEGER2	- INTEGER1 is numerically greater than INTEGER2
* INTEGER1 -lt INTEGER2	- INTEGER1 is numerically less than INTEGER2
* -d FILE - FILE exists and is a directory.
* -e FILE - FILE exists.
* -r FILE - FILE exists and the read permission is granted.
* -s FILE - FILE exists and it's size is greater than zero (ie. it is not empty).
* -w FILE - FILE exists and the write permission is granted.
* -x FILE - FILE exists and the execute permission is granted.

## Case Statements

When if statements get complicated or out of hand, it is a good idea to try and use a case statement instead which can compare many cases at once.

Here is the basic layout:
```
case <variable> in
<pattern 1>)
    <commands>
    ;;
<pattern 2>)
    <other commands>
    ;;
esac
```


## Loops

### While Loops

```
while [ <some test> ]
do
    <commands>
done
```