#!/bin/bash


echo "Destroying main infra"



# Change to Terraform-main directory
cd Terraform-main

# Initialize and apply Terraform config

terraform init
terraform destroy -auto-approve
