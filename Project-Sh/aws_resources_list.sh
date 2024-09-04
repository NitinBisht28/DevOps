#!/bin/bash
################################################################
# This script will list all the resources in the AWS acccount.
#
# Author: Nitin Bisht / DevOps/Shell-Scripting.
# Date: Sep/4/2024
# Version: 1.0
#
# Following are the supported AWS services by the script :
# 1.EC2
# 2.S3
# 3.RDS
# 4.DynamoDB
# 5.Lambda
# 6.EBS
# 7.ELB
# 8.CloudFront
# 9.CloudWatch
# 10.SNS
# 11.SQS
# 12.Route53
# 13.VPC
# 14.CloudFormation
# 15.IAM
#
# Usage: ./aws_resources_list.sh <region> <service_name>
# Example: ./aws_resources_list.sh us-east-1 EC2
#################################################################

# check if the required no. of arguments are passed.
if[$# -ne 2]; then
  echo "usage: $0 <region> <services>"
  exit 1
fi 

# Check if the aws cli is installed or not.

if ! command -v aws &> /dev/null; then
    echo " AWS CLI is not installed. Please install it and try again."
    exit 1
fi 

# Check if the AWS CLI is configured.

if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not cofigured. Please confiure it and try again."
    exit 1
fi

# Execute the cli command based on the service name

case $2 in 
    ec2)
      aws ec2 describe-instances --region $1
      ;;
    s3)
      aws s3api list-buckets --region $1
      ;;
    rds)
      aws rds describe-db-instances --region $1
      ;;
    dynamoDB)
      aws dynamodb list-tables --region $1
      ;;
    lambda)
      aws lambda list-functions --region $1
      ;;
    ebs)
      aws ec2 describe-volumes --region $1
      ;;
    elb)
      aws elb describe-load balancers --region $1
      ;;
    cloudfront)
      aws cloudfront list-distributions --region $1
      ;;
    cloudwatch)
      aws cloudwatch list-distributions --region $1
      ;;
    sns)
      aws sns list-topics --region $1
      ;;
    sqs)
      aws sqs list-queues --region $1
      ;;
    vpc)
      aws ec2 describe-vpcs --region $1
      ;;
    iam)
      aws iam list-users --region $1
      ;;
    route5)
      aws route53 list-hosted-zones --region $1
      ;;
    cloudformation)
      aws cloudformation describe-stacks --region $1
      ;;
    *)
        echo "Invalid service. please enter a valid service."
        exit 1
        ;;
esac




 