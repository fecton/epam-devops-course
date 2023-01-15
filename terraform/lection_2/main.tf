terraform {
    required_providers = {
        aws = {
            source = "hashicorp/aws"
            verison = "2.69.0"
        }
    }
}

provider aws {
    region = "us-west-1"
}

data "aws_ami" "amazon_linux" {
    most_recent = true
    ownes = ["amazon"]
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

resource "aws_instance" "example_a" {
    ami = data.aws_ami_amazon_linux.id
    instance_type = "t2.micro"
}

resource "aws_instance" "example_b" {
    ami = data.aws_ami.amazon_linux.id
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example_a.id
}
