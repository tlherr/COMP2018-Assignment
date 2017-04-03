#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Do a long listing of your tmp directory sorted by modification date. Use the touch command to update the timestamp on the file named 55. Do the long listing again sorted by modification date to show the change.
echo "8)";

echo "=========BEFORE===========";
ls -t $HOME/tmp;
echo "=========TOUCHING=========";
touch $HOME/tmp/55;
echo "=========AFTER============";
ls -t $HOME/tmp;

