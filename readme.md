# AWS CloudFormation Mini Stack

This repository contains a simple AWS CloudFormation stack that creates an Ubuntu20.04 EC2 instance with an associated security group and a Tomcat service fully configured. It also contains a AWS CodeDeploy yml and associated scripts to install and compile a tiny java app inside tomcat.

## Table of Contents

- [Files](#files)
- [Usage](#usage)
- [Requirements](#requirements)
- [Disclaimer](#disclaimer)

## Files

- `tomcat.yml`: This is the CloudFormation template that defines the resources for the stack. It creates an EC2 instance and a security group. It also installs and configures Tomcat, along with its dependencies such as Java.

- `deploy.sh`: This script deploys the CloudFormation stack using the AWS CLI. It assumes that the AWS CLI is installed and configured, and that the stack name is 'Tomcat10'.

- `delete.sh`: This script deletes the CloudFormation stack using the AWS CLI. It also assumes that the AWS CLI is installed and configured, and that the stack name is 'Tomcat10'.

- `appspec.yml`: This is the CodeDeploy pipeline.

## Usage

1. Make sure you have the AWS CLI installed and configured with a profile named 'default'.

2. To deploy the stack, run the `deploy.sh` script:

    ```bash
    bash deployStack.sh
    ```

3. To delete the stack, run the `delete.sh` script:

    ```bash
    bash deleteStack.sh
    ```

4. Log into your AWS web client and create a new CodeDeploy application targeting your new EC2 instance that was created after the initial stack finished.

    `EC2 name: Tomcat10`
    `Stack name: Tomcat10`

5. Wait until the application finish and check your endpoint.

    `Endpoint: /hola2`

Please note that the stack name 'Tomcat10' is hardcoded in the scripts. If you want to use a different stack name, you will need to modify the scripts accordingly.
The endpoint is hardcored in the pipeline scripts.

## Requirements

- AWS CLI
- AWS account with permissions to create EC2 instances, security groups and CodeDeploy applications.
- Bash shell to run the scripts

## Disclaimer

Please use this stack at your own risk. Always check the resources that are being created and ensure that they comply with your security and cost requirements.