provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "Ubuntu18" {
    ami = "ami-013f17f36f8b1fefb"
    instance_type = "t2.micro"

    tags = {
        Name = "Ubuntu Server"
        Owner = "DevOps Student"
        Fullname = "Andrii Lytvynenko"
        Project = "Terraform Intro"
    }
}

resource "aws_instance" "AmazonLinux" {
    ami = "ami-0915bcb5fa77e4892"
    instance_type = "t2.micro"

    tags = {
        Name = "Amazon Linux Server"
        Owner = "DevOps Student"
        Fullname = "Andrii Lytvynenko"
        Project = "Terraform Intro"
    }
}

