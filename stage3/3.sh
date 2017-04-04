#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 3";
echo "Submission: Thomas Herr (200325519)";

# Compare the output of whereis regex and locate regex to get an example of the differences between the two commands.

echo "3)";
echo "locate uses a database that is updated when programs install/uninstall etc
 however it does not track or search for files in real time so can be inaccurate. Whereis finds binaries and manual pages by name";

echo "====== WHEREIS =======";
whereis regex;

echo "====== LOCATE ========";
locate regex;
