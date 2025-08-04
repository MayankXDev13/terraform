module "ec2_instance" {
  source = "./modules/ec2_instance"
  region = var.region
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}