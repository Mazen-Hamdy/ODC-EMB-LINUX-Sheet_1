#In a shell script, 'Ctrl+C' sends the SIGINT (Signal Interrupt) signal to the running process.
#By default, this signal causes the process to terminate. 
#We can handle signals [including SIGINT(2) (sent by Ctrl+C)], by using the trap command.

#Syntax of trap command:
#trap [-options] "piece of code" [signal name or value]

#!/bin/bash

# Define the signal handler
trap "echo; echo 'Ctrl+C was pressed. Exiting...'; exit" SIGINT

echo "This script will run indefinitely until you press Ctrl+C..."

# Infinite loop to simulate a long-running process
while true; do
    sleep 1
done
