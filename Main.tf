# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-vino1234"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "us-west-2"
}

module "VPC" {
    source = "./VPC"
}

module "EC2" {
    source = "./EC2"

    vpc-id                      = "module.vpc.id"
    security-group-id           = "module.vpc.security-group-id"
    rds-security-group          = "module.vpc.db_access_sg_id"
    subnet-id-1                 = "module.vpc.subnet1-id"
    subnet-id-2                 = "module.vpc.subnet2-id"
    key_name                    = var.key_name
}

module "RDS" {
  source            = "./RDS"
  environment       = "production"
  allocated_storage = "20"
  database_name     = var.production_database_name
  database_username = var.production_database_username
  database_password = var.production_database_password
  subnet_ids        = ["module.vpc.subnet1-id", "module.vpc.subnet2-id"]
  vpc_id            = "module.vpc.id"
  instance_class    = "db.t2.micro"
}  
