#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use tar to create a tarfile containing the contents of your tmp directory tree. Use the table of contents option to tar to display a listing of the files in your newly created tarfile. Make a new directory named tmp2 in your home directory. In that directory extract only the a subdirectory along with its files from your tarfile. Do a recursive long listing of your tmp2 directory to show what got restored from your tarfile. 

echo "1)";
tar -cfv tmparchive.tar $HOME/tmp;

mkdir "$HOME/tmp2";

tar --extract --file=tmparchive.tar a --directory "$HOME/tmp2";

ls -laR "$HOME/tmp2";

# Use gzip to create a gzip file containing the contents of your tmp directory tree. Use the table of contents option to gzip to display a listing of the files in your newly created gzip file. Make a new directory named tmp3 in your home directory. In that directory extract only the b subdirectory along with its files from your gzip file. Do a recursive long listing of your tmp3 directory to show what got restored from your gzip file.

echo "2)";


