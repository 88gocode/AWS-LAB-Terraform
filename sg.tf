resource "aws_security_group" "sg" {
  name = "main_sg1"
  vpc_id = aws_vpc.main.id

  ingress {
       from_port   = "22"
       to_port     = "22"
       protocol    = "TCP"
       cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
       from_port   = "-1"
       to_port     = "-1"
       protocol    = "ICMP"
       cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]
    }

  tags = {
       Name = "AZ1_Pub_sg1"
  }

}
