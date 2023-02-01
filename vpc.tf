module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  name = var.vpc_name
  cidr = var.vpc_cidr


}