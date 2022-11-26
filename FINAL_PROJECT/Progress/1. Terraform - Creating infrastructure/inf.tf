provider "aws" {
    access_key  = "AKIAQKGDAXK6ZVK5UNV4"
    secret_key  = "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"
    region      = "eu-central-1"
}

resource "aws_instance" "Jenkins_HOST" {
    ami = "ami-0caef02b518350c8b"
    instance_type = "t2.micro"

    tags = {
        Name = "Jenkins host server"
        Author = "Andrii Lytvynenko"
        Project = "EPAM L1 Final"
    }
}

resource "aws_instance" "PROD_SERVER" {
    ami = "ami-0caef02b518350c8b"
    instance_type = "t2.micro"

    tags = {
        Name = "Production server (Jenkins slave)"
        Author = "Andrii Lytvynenko"
        Project = "EPAM L1 Final"
    }
}


