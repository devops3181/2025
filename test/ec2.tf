module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "demo"
  monitoring             = true
  vpc_security_group_ids = ["sg-07034c195cabb35bb"]
  subnet_id              = "subnet-0aa13c7d81720b647"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}