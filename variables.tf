
# ################################################################################
# # Default Variables
# ################################################################################

variable "main-region" {
  type    = string
  default = "us-west-2"
}


# ################################################################################
# # EKS Cluster Variables
# ################################################################################

variable "cluster_name" {
  type    = string
  default = "dominion-cluster"
}

variable "rolearn" {
  description = "Add admin role to the aws-auth configmap"
  default     = "arn:aws:iam::322266404742:role/terraform-create-role"
}

# ################################################################################
# # ALB Controller Variables
# ################################################################################

variable "env_name" {
  type    = string
  default = "dev"
}

################################################################################
# EKS Cluster Variables for grafana and prometheus deployment
################################################################################

# variable "cluster_endpoint" {
#   type        = string
#   sensitive   = true
#   description = "The cluster endpoint"
# }

# variable "cluster_certificate_authority_data" {
#   type        = string
#   sensitive   = true
#   description = "The Cluster certificate data"
# }

# variable "oidc_provider_arn" {
#   description = "OIDC Provider ARN used for IRSA "
#   type        = string
#   sensitive   = true
# }

# ################################################################################
# # VPC Variables
# ################################################################################

# variable "vpc_id" {
#   description = "VPC ID which Load balancers will be  deployed in"
#   type        = string
# }

# variable "private_subnets" {
#   description = "A list of private subnets"
#   type        = list(string)
# }

################################################################################
# AWS SSO Variables
################################################################################

# variable "sso_admin_group_id" {
#   description = "AWS_SSO Admin Group ID"
#   type        = string
#   sensitive   = true
#   default     = "b4f8f4f8-e011-7046-0637-993dc10edd76"
# }

#maven_sonarqube details

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default = "ami-0b8c6b923777519db"
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
  default = "subnet-05a1d237ea47c7733"
}

variable "db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
  default = "ddsonarqube"
}

variable "db_username" {
  description = "The username for the PostgreSQL database"
  type        = string
  default = "ddsonar"
}

variable "db_password" {
  description = "The password for the PostgreSQL database"
  type        = string
  sensitive   = true
  default = "Serayah11"
}

variable "db_security_group_id" {
  description = "The security group ID for the PostgreSQL database"
  type    = list(string)
  default = ["sg-08832623feec1c320"]
}

variable "db_subnet_group" {
  description = "The subnet group for the PostgreSQL database"
  type        = string
  default = "subnet-05a1d237ea47c7733"
}
