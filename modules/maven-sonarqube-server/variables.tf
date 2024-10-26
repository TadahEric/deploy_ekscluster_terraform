# variable "region" {
#   description = "The AWS region to deploy to"
#   default     = "us-east-1"
# }

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default = "ami-03c983f9003cb9cd1"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.medium"
}

variable "key_name" {
  description = "The key name for the Jenkins server"
  type        = string
  default     = "training36"
}

# variable "main-region" {
#   description = "The AWS region to deploy resources"
#   type        = string
#   default     = "us-west-2"
# }

variable "security_group_id" {
  description = "The security group ID to attach to the instance"
  type        = list(string)
  default = ["sg-08832623feec1c320"]
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be deployed"
  type        = string
}

variable "db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
}

variable "db_username" {
  description = "The username for the PostgreSQL database"
  type        = string
}

variable "db_password" {
  description = "The password for the PostgreSQL database"
  type        = string
  sensitive   = true
}

variable "db_security_group_id" {
  description = "The security group ID for the PostgreSQL database"
  type    = list(string)
}

variable "db_subnet_group" {
  description = "The subnet group for the PostgreSQL database"
  type        = string
}