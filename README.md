# BashPractice

Anything you can run on the command line, you can run in a script and it will do exactly the same thing.

If you can already do some commands on the command line, then you probably know more about scripting than you realize.

Scripts are entered into a plain text file and then invoked.

Currently working through [This](https://ryanstutorials.net/bash-scripting-tutorial/bash-script.php) tutorial

## Execution:
Before running a bash script, it must have the execution permission set. If you forget to add the permission, you will get an error.

## To add execute permissions:
```
chmod 755 hello-world.sh
```

## To check permission on a script:

## To run hello-world.sh

( It is important to understand the dot ( . ) is actually a reference to your current directory. e.g. ./hello-world.sh)

```
./hello-world.sh
```


## $PATH : What is it?

When you type a word on the command line Bash tries to find it in a series of directories stored in a variable called $PATH

**TODO** add section explaining how to add to your path variable

to get the value of $PATH, you can use **echo**  (directories are seprated by the **:** symbol)
```
echo $PATH
```

* Bash only looks in the $PATH directories and doesn't.
* It will look through those directories in order and execute the first instance of the program or script that it finds.
* The $PATH variable is an individual user variable so each user on a system may set it to suit themselves.

## Shebang (#!): What is it?

Is where you point to the path of the interpreter of the bash script

* Must be on the very first line of the script


## Formatting

* A single space can totally ruin a script so be really careful how you write them
* Try to use indentation and code formatting to reduce the chance of formatting errors





