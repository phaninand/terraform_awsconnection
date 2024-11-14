# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "terraform-scripts-phaninand"
    key       = "terraform_awsconnection.tfstate"
    region    = "us-east-1"
    profile   = "terraform_user"
  }
}