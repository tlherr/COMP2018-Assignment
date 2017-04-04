#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 2";
echo "Submission: Thomas Herr (200325519)";


# Run a command that displays It's there! if there is a file named 
# [your first name initial]/[your last name initial][the last digit of your student number] 
# and then another command that displays Sad! if there is no file named 
# [your first name initial]/[your last name initial][the last digit of your student number][your first name initial].

echo "10)";

if [ -e "t/h/9" ]; then
        echo $"It\'s there!";
else
        echo "Sad!";
fi

