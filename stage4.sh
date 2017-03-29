#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use tar to create a tarfile containing the contents of your tmp directory tree. Use the table of contents option to tar to display a listing of the files in your newly created tarfile. Make a new directory named tmp2 in your home directory. In that directory extract only the a subdirectory along with its files from your tarfile. Do a recursive long listing of your tmp2 directory to show what got restored from your tarfile. 

echo "1)";
tar -cfv tmparchive.tar $HOME/tmp;

mkdir "$HOME/tmp2";

tar --extract --file=tmparchive.tar a --directory "$HOME/tmp2";

ls -laR "$HOME/tmp2";

# Use gzip to create a gzip file containing the contents of your tmp directory tree. Use the table of contents option to gzip to display a listing of the files in your newly created gzip file. Make a new directory named tmp3 in your home directory. In that directory extract only the b subdirectory along with its files from your gzip file. Do a recursive long listing of your tmp3 directory to show what got restored from your gzip file.

echo "2)";
tar -czf tmp2archive.tar.gz;

mkdir "$HOME/tmp3";

tar -z --extract --file=tmp2archive.tar.gz b --directory "$HOME/tmp3";

ls -laR "$HOME/tmp3";

# Use zip to create a zip file containing the contents of your tmp directory tree. Use the table of contents option to zip to display a listing of the files in your newly created zip file. Make a new directory named tmp4 in your home directory. In that directory extract only the c subdirectory along with its files from your zip file. Do a recursive long listing of your tmp4 directory to show what got restored from your zip file.

echo "3)";

zip -r tmp3archive.zip "$HOME/tmp";

unzip -l tmp3archive.zip;

mkdir "$HOME/tmp4";

unzip tmp3archive.zip c -d "$HOME/tmp4";

la -laR "$HOME/tmp4";

# When browsing files, you want to use a command which is appropriate to the task. Use tail to see the 5 most recent entries in your /var/log/syslog file. Use head to see what kind of information is contained in the /etc/services file. Browse the /etc/services file using more if wc shows that the file contains more than 20 lines of text.

echo "4)";
tail -n 5 /var/log/syslog;
head /etc/services;

if [ wc -l /etc/services -gt 20 ]; then
	cat /etc/services;
fi

# Use the cal command with redirection to create a file named 2017.txt which has a calendar for the year 2017 in it. Use the wc command to count the number of lines in the file. Use the grep command to count the number of blank lines in the file.

echo "5)";

cal 2017 >> 2017.txt;
echo "Number of Lines in 2017.txt:";
wc -l 2017.txt;
echo "Number of Blank Lines in 2017.txt";
grep -cvP '\S' 2017.txt;


# Use the cat command to create a file named foods with at least five food names in it, one on each line. Use tr to convert all the letters in the text from the foods file into capitals and putting the ouput into a new file named FOODS.

echo "6)";

cat >foods <<EOL
Bread
Eggs 
Cheese
Milk
Eggs
EOL

cat foods | tr '[a-z]' '[A-Z]' >> FOODS

# Use sort to display your foods file in reverse alphabetically order. Use sort to display just the usernames from the /etc/passwd file sorted alphabetically.

echo "7)";

cat foods | sort -r;

cat /etc/passwd | sort;

# Use grep and sort to display a sorted list of the usernames for all the users in /etc/passwd that have either /bin/sh or /bin/bash as their shell. The shell is the last field on each line in the file.

echo "8)";

cat /etc/passwd | grep -E '/bin/sh|/bin/bash';


# Use egrep to display the lines from /etc/services which contain either http or smtp, in upper or lower case

echo "9)";

egrep -i "http|smtp" /etc/services;

# Use find with xargs and sort and tail to produce a list of the ten largest files on the system larger than 10MB,  sorted by their sizes, displayed with human readable sizes. Any errors from the find command should be discarded and not displayed on the screen.

echo "10)";

find . / -size +10M -type f -print0 2>/dev/null | xargs -0 ls -hal | sort -h | tail -n 10



