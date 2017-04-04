#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";
echo "Submission: Thomas Herr (200325519)";

# Run the commands in the script found at https://github.com/zonzorp/comp2108/blob/master/makefiles.sh. 
# Use file name globbing to display a list of all the files created that exactly match the following patterns:
# [any of the first 3 letters in your first name]/[first or last digit of your studentnumber][first or last letter of your last name]
# the first letter of your first name/anything that ends with the last letter of your last name

echo "7)";
echo "Making Files";
cd ../out;
rm -rf filetest;
mkdir filetest;
cd filetest;
for a in a b c d e f g h i j k l m n o p q r s t u v w x y z; do mkdir $a; done
for i in 0 1 2 3 4 5 6 7 8 9; do touch $i; done
for a in [a-z]; do for i in [0-9]; do touch $a$i $i$a; for b in [a-z];
do touch $a/$i $a/$b $a/$a$b $a/$b$i $a/$i$b $a/$b$i$a $a/$i$b$i; done; done; done

echo "Listing: any of the first 3 letters in your first name";
ls -d *[tho]*;
echo "Listing: first or last digit of your studentnumber";
ls -d *[2,9]*;
echo "Listing: first or last letter of your last name";
ls -d *[h,r]*

cd ../../stage2;

