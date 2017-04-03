#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";


# Use the cal command with redirection to create a file named 2017.txt which has a calendar for the year 2017 in it. Use the wc command to count the number of lines in the file. Use the grep command to count the number of blank lines in the file.

echo "5)";

cal 2017 >> out/2017.txt;
echo "Number of Lines in 2017.txt:";
wc -l out/2017.txt;
echo "Number of Blank Lines in 2017.txt";
grep -cvP '\S' out/2017.txt;

