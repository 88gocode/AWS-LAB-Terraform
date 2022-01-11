data "aws_ami"  "example" {
    most_recent      = true
    owners           = ["amazon"]
    name_regex       = "^amzn.*"

    filter {
        name = "virtualization-type"
        values = ["hvm"]

    }
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }
}


output "ami_id" {
  value = data.aws_ami.example.id
  description = "demo for AMI Image ID"
}

output "IP" {
  value = aws_instance.example.public_ip
  description = "Public IP for demo"
}
