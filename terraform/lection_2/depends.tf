resource  "aws_s3_bucket" "example" {
    acl = "private"
}

resource "aws_instance" "example_c" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"

    depends_on = [aws_s3_bucket.example]
}

module "example_sqs_queue" {
    source = "terraform-aws-modules/sqs/aws"
    version = "2.1.0"

    depends_on = [aws_s3_bucket.example, aws_instance.example_c]
}
