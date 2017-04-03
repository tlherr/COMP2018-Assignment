#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";


# Use the cat command to create a file named foods with at least five food names in it, one on each line. Use tr to convert all the letters in the text from the foods file into capitals and putting the ouput into a new file named FOODS.

echo "6)";

cat >out/foods <<EOL
Bread
Eggs 
Cheese
Milk
Eggs
EOL

cat out/foods | tr '[a-z]' '[A-Z]' >> out/FOODS

