############## VPC #################

variable "vpc_name" {
  description = "Name for the VPC"
  type = string
  default = "terraform-vpc"
}

variable "vpc_cidr" {
    description = "CIDR for VPC"
    type = string
    default = "11.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
  default     = ["11.0.11.0/24", "11.0.12.0/24"]
}

variable "vpc_private_subnets" {
  description = "List of private subnet CIDR ranges"
  type        = list(string)
  default     = ["11.0.1.0/24", "11.0.2.0/24"]
}


variable "vpc_tags" {
    description = "Tags apply on the VPC"
    type = map(string)
    default = {
      "Name" = "dev-vpc",
      "created-by" = "terraform"
    }
  
############# Instance ################


}
variable "instance_type"{
    description = "Type of the Instance"
    type = string
    default = "t2.micro"
}

variable "instance_count" {
    description = "Number of Instances"
    type = number
    default = "1"  
}


variable "instance_tags" {
  description = "Tags of the Instance"
  type = string
  default = "Dev-Server"
}
######## ami instance data #############
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "owner-id"
    values = ["099720109477"]
  }
}
##############################################