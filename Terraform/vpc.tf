resource "aws_vpc" "vpc-1" {
  cidr_block = "172.168.0.0/16"
  region= "ap-south-1"
}

resource "aws_subnet" "vpc-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}