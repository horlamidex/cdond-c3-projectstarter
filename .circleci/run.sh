#!/bin/bash
aws ec2 describe-instances  --query 'Reservations[*].Instances[*].PublicIpAddress' --filters "Name=tag:Project,Values=udapeople" --output text >> inventory.txt