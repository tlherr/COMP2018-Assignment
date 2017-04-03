#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use gzip to create a gzip file containing the contents of your tmp directory tree. Use the table of contents option to gzip to display a listing of the files in your newly created gzip file. Make a new directory named tmp3 in your home directory. In that directory extract only the b subdirectory along with its files from your gzip file. Do a recursive long listing of your tmp3 directory to show what got restored from your gzip file.

echo "2)";
tar -czf out/tmp2archive.tar.gz;

mkdir "$HOME/tmp3";

tar -z --extract --file=out/tmp2archive.tar.gz b --directory "$HOME/tmp3";

ls -laR "$HOME/tmp3";

