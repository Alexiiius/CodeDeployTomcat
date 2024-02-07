#!/bin/bash

aws cloudformation delete-stack --profile default --stack-name Tomcat10

# Array of spinner characters
spinner=( '/' '-' '\' '|' )

# Wait until the stack is deleted
while true; do
    if aws cloudformation describe-stacks --profile default --stack-name Tomcat10 2>&1 | grep -q 'does not exist'; then
        echo -e "\nStack deleted successfully"
        break
    else
        for i in "${spinner[@]}"
        do
            echo -ne "\rWaiting for stack to delete...$i"
            sleep 0.2
        done
    fi
done