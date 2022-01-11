# Create Route Table
resource "aws_route_table" "main-public-rt" {
  vpc_id = aws_vpc.main.id
  tags = {
      Name = "AZ1-Pub-Rtable"
  }

  route  {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.main-igw.id
  }

}

# route associations public
resource "aws_route_table_association" "main-public-rt-az1" {
   subnet_id = aws_subnet.az1-public1-subnet.id
   route_table_id = aws_route_table.main-public-rt.id
}


# Create Private  Route Table
resource "aws_route_table" "main-private-rt" {
  vpc_id = aws_vpc.main.id
  tags = {
      Name = "AZ1-Private-Rtable"
  }
}

# route associations private
resource "aws_route_table_association" "main-private-rt-az1" {
   subnet_id = aws_subnet.az1-private-subnet.id
   route_table_id = aws_route_table.main-private-rt.id
}
