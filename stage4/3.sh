#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use zip to create a zip file containing the contents of your tmp directory tree. Use the table of contents option to zip to display a listing of the files in your newly created zip file. Make a new directory named tmp4 in your home directory. In that directory extract only the c subdirectory along with its files from your zip file. Do a recursive long listing of your tmp4 directory to show what got restored from your zip file.

echo "3)";

zip -r out/tmp3archive.zip "$HOME/tmp";

unzip -l out/tmp3archive.zip;

mkdir "$HOME/tmp4";

unzip out/tmp3archive.zip c -d "$HOME/tmp4";

la -laR "$HOME/tmp4";

