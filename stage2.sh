#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";
echo "Submission: Thomas Herr (200325519)";

# List the files in your home directory. List them both as a set of filenames, 
# and as a long listing showing file attributes
echo "1)";
ls ~/;
ls -la ~/;

 # Display a calendar for the month and year each of your parents was born, 
 # or your own birth month if your parents' months are not known. 
 # Use the date command to display your birthdate.
echo "2)";
cal -d 1990-10;
date --date='1990-10-31';

# Display the default value for your command history length, 
# then change it to be the last 4 digits of your student number, then display it again.

echo "3)";

# HISTSIZE is the number of lines or commands that are stored in memory in a history list while your bash session is ongoing.

echo $HISTSIZE;
export HISTSIZE=5519
echo $HISTSIZE;


make_local_var()
{
	 echo "Creating local variable student number";
	 local studentnumber=200325519;
	 echo "Placing local variable into environment";
	 export studentnumber;
	 echo "Showing Environment";
	 env;
	 echo "Removing from path";
	 unset studentnumber;
}

# Make a local variable named studentnumber and put your student number into it. 
# Then put that variable into your environment. Display it using the env command. 
# Delete that variable. Use the env command to show it is gone.

echo "4)";
make_local_var

# Where does your shell get the echo command from? 
# Try to figure it out using both the which command and the type command.

echo "5)";
which echo;
type echo;

# Create an alias that shows your student number and first name when you run a 
# command called showme.

echo "6)";
grep -q 'showme' ~/.bashrc || echo "alias showme='echo 200325519';" >> ~/.bashrc;

showme()
{
	echo 200325519;
}

export -f showme;
showme;

# Run the commands in the script found at https://github.com/zonzorp/comp2108/blob/master/makefiles.sh. 
# Use file name globbing to display a list of all the files created that exactly match the following patterns:
# [any of the first 3 letters in your first name]/[first or last digit of your studentnumber][first or last letter of your last name]
# the first letter of your first name/anything that ends with the last letter of your last name

echo "7)";
echo "Making Files";
rm -rf filetest;
mkdir filetest;
cd filetest;
for a in a b c d e f g h i j k l m n o p q r s t u v w x y z; do mkdir $a; done
for i in 0 1 2 3 4 5 6 7 8 9; do touch $i; done
for a in [a-z]; do for i in [0-9]; do touch $a$i $i$a; for b in [a-z]; 
do touch $a/$i $a/$b $a/$a$b $a/$b$i $a/$i$b $a/$b$i$a $a/$i$b$i; done; done; done

echo "Listing: any of the first 3 letters in your first name";
ls -d *[tho]*;
echo "Listing: first or last digit of your studentnumber";
ls -d *[2,9]*;
echo "Listing: first or last letter of your last name";
ls -d *[h,r]*

cd ../;

# Use the echo command to display the following output:
# "Shouldn't $1.25 times 6 split 3 ways give $2.50 for each person?", he demanded!
echo "8)";
echo $'Shouldn\'t $1.25 times 6 split 3 ways give $2.50 for each person?", he demanded!';

# Put the calendar for this month into a variable named january and display that variable. 
# Use only one command line to achieve this.

echo "9)";

echo "${CAL=$(cal -m january 2017)}";

# Run a command that displays It's there! if there is a file named 
# [your first name initial]/[your last name initial][the last digit of your student number] 
# and then another command that displays Sad! if there is no file named 
# [your first name initial]/[your last name initial][the last digit of your student number][your first name initial].

echo "10)";


if [ -e "t/h/9" ]; then
	echo $"It\'s there!";
else
	echo "Sad!";
fi