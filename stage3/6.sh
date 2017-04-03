#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# In your tmp directory (not in any subdirectories), rename the files whose names are numbers to be those numbers repeated twice (e.g. a file named 0 becomes a file named 00). Do a recursive listing of your tmp directory to show what is there now.
echo "6)";
echo "======== BEFORE ============";
find $HOME/tmp -maxdepth 1 -name '?' -type f;

echo "======== RENAMING ==========";
find $HOME/tmp -maxdepth 1 -name '?' -type f -exec bash -c 'mv -v $0 ${0}$(echo -n $0 | tail -c 1)' {} \;

echo "======== AFTER ============";
find $HOME/tmp -maxdepth 1 -name '??' -type f;

