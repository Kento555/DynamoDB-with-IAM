# Backend configuration to store tfstate in an S3 bucket
terraform {
  backend "s3" {
    bucket         = "sctp-ce9-tfstate"                    # This is an existing bucket to store terraform tfstate file
    key            = "ws-dynamodb-table-aim-terraform.tfstate" # Path to store tfstate
    region         = "us-east-1"
    # dynamodb_table = "ws-tf-bookinventory"               # DynamoDB table for state locking
    encrypt        = true 
  }
}