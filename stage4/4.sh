#!/bin/bash
# Thomas Herr (200325519)

echo "COMP2018-17W-21160 Research Assignment Stage 4";
echo "Submission: Thomas Herr (200325519)";

# When browsing files, you want to use a command which is appropriate to the task. Use tail to see the 5 most recent entries in your /var/log/syslog file. Use head to see what kind of information is contained in the /etc/services file. Browse the /etc/services file using more if wc shows that the file contains more than 20 lines of text.

echo "4)";
tail -n 5 /var/log/syslog;
head /etc/services;

serviceLines=$(cat /etc/services|wc -l);

if [ "$serviceLines" -gt 20 ]; then
        cat /etc/services;
fi

