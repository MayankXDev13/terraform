provider "aws" {
  region = "us-east-1"
}

module "ec2_instacne" {
    source = "./module/ec2_instance"
    ami_value = "ami-020cba7c55df1f615"
    instance_type_vlaue = "t2.micro"
  
}