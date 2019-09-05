provider "aws" {
  region = "us-east-2"
}

module "security_group" {
  source         = "./modules/security-groups"
  sg_description = "Description of security group"
}

module "instance" {
  source = "./modules/instances"
  sg_names = ["${module.security_group.sg_names}"]
}

