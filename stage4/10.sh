#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";


# Use find with xargs and sort and tail to produce a list of the ten largest files on the system larger than 10MB,  sorted by their sizes, displayed with human readable sizes. Any errors from the find command should be discarded and not displayed on the screen.

echo "10)";


# Find all files over 10 MB, write error output to /dev/null
# list each file with human readable size, sort by largest file first then reverse sort order (smallest files displayed first, largest at bottom - for tail)
# Get the last 10 lines
# pass this output to tac to once again reverse the sort order


# tried using sort with k flag but was unable to get it to do what I wanted, switched to using tac
# find / -size +10M -type f -print0 2>/dev/null | xargs -0 ls -lhSr | tail -n 10 | sort -k 5 -n

find / -size +10M -type f -print0 2>/dev/null | xargs -0 ls -lhSr | tail -n 10 | tac
