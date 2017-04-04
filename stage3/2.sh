#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Use the regex(7) man page to determine if you can use a \ at the end of a regular expression.

echo "2)";
echo "It is illegal to end an RE with '\'.";

man 7 regex | grep illegal
