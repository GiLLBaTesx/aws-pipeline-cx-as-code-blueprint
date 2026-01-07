# Backend configuration for Terraform state
# This file provides the S3 backend configuration to avoid prompts during terraform init

terraform {
  backend "s3" {
    bucket = "genesys-terraform-state-dev"
    key    = "genesys/terraform.tfstate"
    region = "us-east-1"
    
    # Optional: Enable state locking with DynamoDB
    # dynamodb_table = "terraform-state-lock"
    # encrypt        = true
  }
}