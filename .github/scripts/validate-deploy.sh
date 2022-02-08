#!/usr/bin/env bash

REGION=$(cat terraform.tfvars | grep -E "^region" | sed "s/region=//g" | sed 's/"//g')

aws configure set region ${REGION}
aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
exit 1
