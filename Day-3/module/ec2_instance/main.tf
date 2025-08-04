provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = var.ami_value
  instance_type = var.instance_type_vlaue

  tags = {
    Name: "HelloWorld"
  }

}