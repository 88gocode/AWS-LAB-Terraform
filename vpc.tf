resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_lab0
  instance_tenancy     = "default"
  enable_dns_support = true
  enable_dns_hostnames = true
  enable_classiclink   = "false"
  tags = {
       Name = "VPC-LAB1"

  }

}


# igw
resource "aws_internet_gateway" "main-igw" {
  vpc_id = aws_vpc.main.id
  tags = {
       Name = "igw-Lab"

  }

}
