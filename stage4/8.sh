#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use grep and sort to display a sorted list of the usernames for all the users in /etc/passwd that have either /bin/sh or /bin/bash as their shell. The shell is the last field on each line in the file.

echo "8)";

cat /etc/passwd | grep -E '/bin/sh|/bin/bash';

