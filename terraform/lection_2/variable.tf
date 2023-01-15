terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~>3.27"
        }
    }
}

provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_instance" "example" {
    ami = "ami-08d70e59c07c61a3a"
    instance_type = "t2.micro"
    tags = {
        Name = "Example instance"
    }
}


