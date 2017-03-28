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
find $HOME/tmp -maxdepth 1 -name '?' -type f;

find $HOME/tmp -maxdepth 1 -name '?' -type f 
-exec bash -c 'mv -v $0 ${0}$(echo -n $0 | tail -c 1)' {} \;

find $HOME/tmp -maxdepth 1 -name '??' -type f;












