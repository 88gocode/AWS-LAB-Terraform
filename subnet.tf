# Create Publi Subnet

resource "aws_subnet" "az1-public1-subnet" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.public_subnet_cidr_lab0
   availability_zone = var.AWS_AZ
   map_public_ip_on_launch = "true"
   tags = {
      Name = "AZ1-PubSubnet"

   }
}
