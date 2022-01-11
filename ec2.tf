# For Public Subnet
resource "aws_instance" "example" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.az1-public1-subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.sg.id]

  # the public SSH key
  key_name = var.key_name

  tags = {
       Name = "AZ1-Pub-EC2_1"
  }
}

# For Private Subnet
resource "aws_instance" "example2" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.az1-private-subnet.id

  # the security group
  vpc_security_group_ids = [aws_security_group.sg2.id]

  # the public SSH key
  key_name = var.key_name

  tags = {
       Name = "AZ1-Private-EC2_1"
  }
}
