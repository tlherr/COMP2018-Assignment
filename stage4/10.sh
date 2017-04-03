#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";


# Use find with xargs and sort and tail to produce a list of the ten largest files on the system larger than 10MB,  sorted by their sizes, displayed with human readable sizes. Any errors from the find command should be discarded and not displayed on the screen.

echo "10)";

find . / -size +10M -type f -print0 2>/dev/null | xargs -0 ls -hal | sort -h | tail -n 10

