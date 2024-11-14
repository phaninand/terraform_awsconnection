#configure cloud provider
provider "aws" {
  region = var.region
  profile = "terraform_user"
}

module "vpc" {
    source                          = "../modules/vpc"
    region                          = var.region
    project_name                    = var.project_name
    vpc_cider                       = var.vpc_cider
    public_subnet_az1_cider         = var.public_subnet_az1_cider
    public_subnet_az2_cider         = var.public_subnet_az2_cider
    private_app_subnet_az1_cider    = var.private_app_subnet_az1_cider
    private_app_subnet_az2_cider    = var.private_app_subnet_az2_cider
    private_data_subnet_az1_cider   = var.private_data_subnet_az1_cider
    private_data_subnet_az2_cider   = var.private_data_subnet_az2_cider

}