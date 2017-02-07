#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";

echo "1)";
ls ~/;
echo "2)";
ls -la ~/;
echo "3)";
cal 31 10 1990;

echo "4)";

make_local_var()
{
 echo "Creating local variable student number";
 local studentnumber=200325519;
 echo "Placing local variable into environment";
 export studentnumber;
 echo "Showing Environment";
 env;
 echo "Removing from path";
 unset studentnumber;
}

make_local_var

echo "5)";
which echo;
type echo;

echo "6)";
grep -q 'showme' ~/.zshrc || echo "alias showme='echo 200325519';" >> ~/.zshrc;
shopt -s expand_aliases
source ~/.zshrc;
showme;

echo "7)";
echo "Making Files";
for a in a b c d e f g h i j k l m n o p q r s t u v w x y z; do mkdir $a; done
for i in 0 1 2 3 4 5 6 7 8 9; do touch $i; done
for a in [a-z]; do for i in [0-9]; do touch $a$i $i$a; for b in [a-z]; do touch $a/$i $a/$b $a/$a$b $a/$b$i $a/$i$b $a/$b$i$a $a/$i$b$i; done; done; done

echo "Listing: any of the first 3 letters in your first name";
ls -d *[tho]*;
echo "Listing: first or last digit of your studentnumber";
ls -d *[2,9]*;
echo "Listing: first or last letter of your last name";
ls -d *[h,r]*


echo "8)";
echo '"Shouldn\'t \$1.25 times 6 split 3 ways give \$2.50 for each person?", he demanded!';

