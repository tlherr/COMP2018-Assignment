#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use egrep to display the lines from /etc/services which contain either http or smtp, in upper or lower case

echo "9)";

egrep -i "http|smtp" /etc/services;


