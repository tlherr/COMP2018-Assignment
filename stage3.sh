#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Use the man page for the date command to learn how to run the date command to only display the full name of the current day of the week (e.g. Monday, Tuesday, etc.).

echo "1)";
date '+%A';

# Use the regex(7) man page to determine if you can use a \ at the end of a regular expression.

echo "2)";
echo "It is illegal to end an RE with '\'.";

# Compare the output of whereis regex and locate regex to get an example of the differences between the two commands.

echo "3)";
echo "locate uses a database that is updated when programs install/uninstall etc
 however it does not track or search for files in real time so can be inaccurate. Whereis finds binaries and manual pages by name";

# Make directory in your home directory named tmp.

echo "4)";
mkdir $HOME/tmp;
ls -la $HOME | grep tmp;

# Copy files from generated into tmp, only copy files that have a single character in their name
echo "5)";

cd filetest;
find . -name '?' -type f -exec rsync -Raq {} ~/tmp \;
cd ../;

# In your tmp directory (not in any subdirectories), rename the files whose names are numbers to be those numbers repeated twice (e.g. a file named 0 becomes a file named 00). Do a recursive listing of your tmp directory to show what is there now.
echo "6)";
echo "======== BEFORE ============";
find $HOME/tmp -maxdepth 1 -name '?' -type f;

echo "======== RENAMING ==========";
find $HOME/tmp -maxdepth 1 -name '?' -type f -exec bash -c 'mv -v $0 ${0}$(echo -n $0 | tail -c 1)' {} \;

echo "======== AFTER ============";
find $HOME/tmp -maxdepth 1 -name '??' -type f;


# Remove the b/c file and the a/b file from your tmp directory. Move each directory in your tmp directory into the one alphabetically before the one you are moving (e.g. move the c directory into the b directory, then the b directory into the a directory). Do a recursive listing of the tmp directory to show what is there now.
echo "7)";

rm -rf $HOME/tmp/b/c;
rm -rf $HOME/tmp/a/b;

# Get all directories in alphabetical order
loopCount=1;
loopTotal=$(find $HOME/tmp -name '?' -type d|wc -l);
echo $loopTotal;

find $HOME/tmp -name '?' -type d|sort -r|while read fname; do
  	echo $loopCount;
	# Check if we are on last element
	if [ $loopCount -eq $loopTotal ]; then
		echo "Last Element";
		break;
	fi

	# Check if this is first iteration
	if [ $loopCount -eq 1 ]; then
		prev=$fname;
		echo "First Element";
	else
		echo "Previous: $prev";
		echo "Current: $fname";
		echo "Performing Operation: mv $prev $fname";
		prev=$fname;
	fi
	
	((loopCount++));
done


# Do a long listing of your tmp directory sorted by modification date. Use the touch command to update the timestamp on the file named 55. Do the long listing again sorted by modification date to show the change.
echo "8)";

echo "=========BEFORE===========";
ls -t $HOME/tmp;
echo "=========TOUCHING=========";
touch $HOME/tmp/55;
echo "=========AFTER============";
ls -t $HOME/tmp;

# Use the touch command to create six files named 0, 1, 2, 3, 4, 5 in the tmp directory. Show a list of what is in the tmp directory now.

echo "9)";

toBuild=(0,1,2,3,4,5);

for i in "${toBuild[@]}"
do
	touch $HOME/tmp/{$i};
done

# Remove the files you created in step 9, and show a list of files in the tmp directory to demonstrate they are gone.
echo "10)";
echo "=======BEFORE=======";
ls -la $HOME/tmp;

for i in "${toBuild[@]}"
do
   rm -rf $HOME/tmp/{$i};
done

echo "=======AFTER=========";
ls -la $HOME/tmp;



