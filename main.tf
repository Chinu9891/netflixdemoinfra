provider "aws" {
region = "eu-north-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-042b4708b1d05f512"
instance_type = "t3.micro"
key_name = "pc530PM"
vpc_security_group_ids = ["sg-002b9c4a26a3c7a05"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
