terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "infra/terraform.state"
    bucket         = "terraform-state-bucket-tadah"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
  }
}
