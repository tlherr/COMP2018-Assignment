#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Copy files from generated into tmp, only copy files that have a single character in their name
echo "5)";

cd ../out/filetest;
find . -name '?' -type f -exec rsync -Raq {} ~/tmp \;
cd ../../stage3;

