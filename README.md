# Unix-Lab-Projects
Notes and Projects from a Unix Lab class

This folder contains the notes and labs from an introdcutory Unix Lab class that I took this past semester. The class was very hands-on; the class was mostly given time to work on assigned labs that related to DevOps, introductory Unix labs, introductory version control processes with Git, and a very brief introduction to VM infrastructure and automatic VM provisioning using Ansible. I decided it would be a good idea to post all the files online to preserve them in case I get a new computer and to epxand my online portfolio for future job references.

All labs have been edited from their original forms; I took the liberty of reducing the folders to the base shell scripts or any other necessary code files that were written. Any files that contained personal information were also removed. Any .doxc or .pdf file were also removed, as they didn't contain any code files.

Here's a quick rundown of the assignments and their goals:

Lab 4: Intro to Shell scripting
 - loops.sh: adds the month and minute values built into the shell script together and iterates through them.
 - mine.sh: prints the date, default path variable, and home directory of the user.
 - oddeven.sh: gets the minute value and prints out whether it is even or odd.
 
 Lab 5: More Shell scripting
  - args.sh: names the calling program and the number and name(s) of any positional parameters that are included.
  - myname.sh: takes in user input and prints a greeting.
  - myname2.sh: take in user input and outputs it into a temporary file that is named after the Process ID number (using the $$ flag)
  - lab5.sh: checks if the correct number and correct name of arguments is passed. It then checks is the second argument is in a .txt file that is passed in the first argument. If it isn't, it adds it to the end of the file.
