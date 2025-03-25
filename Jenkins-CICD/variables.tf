variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH key name to connect to EC2 instance."
  default     = "your-key-name" # Update this to your actual EC2 key pair
}

variable "instance_type" {
  description = "Instance type for EC2"
  default     = "t2.large"
}

variable "ami_id" {
  description = "AMI for Ubuntu 24.04 EC2 instance"
  default     = "ami-084568db4383264d4"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to store the Terraform state"
  type        = string
  default     = "purplehaze777"
}

variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "purplehaze777-dynamodb-table"
}

variable "acl" {
  description = "S3 bucket ACL"
  type        = string
  default     = "private"
}
