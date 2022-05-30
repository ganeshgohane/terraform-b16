resource "aws_vpc" "main" {
  cidr_block = "172.168.0.0/16"
  region= "ap-south-1"
}