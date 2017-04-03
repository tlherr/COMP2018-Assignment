#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";
echo "Submission: Thomas Herr (200325519)";


# Create an alias that shows your student number and first name when you run a 
# command called showme.


echo "6)";
grep -q 'showme' ~/.bashrc || echo "alias showme='echo 200325519';" >> ~/.bashrc;

showme()
{
        echo 200325519;
}

export -f showme;
showme;


