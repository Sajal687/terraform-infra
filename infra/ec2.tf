provider "aws" {
    region = ca-central-1 
}

resource "aws_instance" "my_instance" {
      ami = "ami-07117708253546063"
      instance_type = "t2.micro"

      tags = {
        Name: var.ec2_name
      }
}