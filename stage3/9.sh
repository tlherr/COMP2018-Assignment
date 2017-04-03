#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Use the touch command to create six files named 0, 1, 2, 3, 4, 5 in the tmp directory. Show a list of what is in the tmp directory now.

echo "9)";

toBuild=(0,1,2,3,4,5);

for i in "${toBuild[@]}"
do
        touch $HOME/tmp/{$i};
done

