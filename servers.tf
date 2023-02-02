# module "ec2-instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "4.3.0"
#   ami = data.aws_ami.ubuntu.image_id
#   instance_type = var.instance_type
#   count = var.instance_count
  
# }