#!/bin/bash
# Check if the AWS CLI is installed
if ! which aws &> /dev/null
then
    echo "AWS CLI is not installed. Please install it before running this script."
    echo "Do not run this script using sudo, it will not find the aws command when switching users."
    exit 1
fi

# Launch the CloudFormation stack
aws cloudformation deploy --profile default --stack-name Tomcat10 --template-file tomcat.yml

if [ $? -eq 0 ]; then
    salami=$(aws cloudformation list-exports --query "Exports[?Name=='PublicIP'].Value" --output text)
    echo "Public IP: http://${salami}"
    echo "Tomcat URL: http://${salami}:8080/"
fi