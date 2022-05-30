resource "aws_vpc" "vpc-1" {
  cidr_block = "172.168.0.0/16"
  region= "ap-south-1"
}