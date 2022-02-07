resource "aws_eip" "nat_eip_lab0" {
   vpc = true
}

resource "aws_nat_gateway" "gw" {
   allocation_id = aws_eip.nat_eip_lab0.id
   subnet_id     = aws_subnet.az1-public1-subnet.id
   depends_on = [aws_internet_gateway.main-igw]
   tags = {
       Name = "nat_gw_lab0"

   }
}
