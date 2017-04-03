#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";
echo "Submission: Thomas Herr (200325519)";

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

# Make a local variable named studentnumber and put your student number into it. 
# Then put that variable into your environment. Display it using the env command. 
# Delete that variable. Use the env command to show it is gone.

echo "4)";
make_local_var

