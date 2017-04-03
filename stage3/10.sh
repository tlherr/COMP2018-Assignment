#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

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

