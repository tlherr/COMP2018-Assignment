#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";


# Remove the b/c file and the a/b file from your tmp directory. Move each directory in your tmp directory into the one alphabetically before the one you are moving (e.g. move the c directory into the b directory, then the b directory into the a directory). Do a recursive listing of the tmp directory to show what is there now.
echo "7)";

rm -rf $HOME/tmp/b/c;
rm -rf $HOME/tmp/a/b;

# Get all directories in alphabetical order
# remove each conflicting subfile
loopCount=1;
loopTotal=$(find $HOME/tmp -name '?' -type d|wc -l);
echo $loopTotal;

find $HOME/tmp -name '?' -type d|sort -r|while read fname; do
        echo $loopCount;
        # Check if we are on last element
        if [ $loopCount -eq $loopTotal ]; then
                echo "Last Element";
                break;
        fi

        # Check if this is first iteration
        if [ $loopCount -eq 1 ]; then
                prev=$fname;
                echo "First Element";
        else
                echo "Previous: $prev";
                echo "Current: $fname";
                echo "Performing Operation: mv $prev $fname";
                prev=$fname;
        fi

        ((loopCount++));
done

