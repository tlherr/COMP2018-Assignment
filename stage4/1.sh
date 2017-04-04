#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# Use tar to create a tarfile containing the contents of your tmp directory tree. Use the table of contents option to tar to display a listing of the files in your newly created tarfile. Make a new directory named tmp2 in your home directory. In that directory extract only the a subdirectory along with its files from your tarfile. Do a recursive long listing of your tmp2 directory to show what got restored from your tarfile. 

echo "1)";

tar -c --file="../out/tmparchive.tar" $HOME/tmp;

if [ ! -d $HOME/tmp2 ]; then
	mkdir "$HOME/tmp2";
fi

tar -x --file="../out/tmparchive.tar" --directory="$HOME/tmp2" --strip-components=3 home/tom/tmp/a;

ls -laR "$HOME/tmp2";

