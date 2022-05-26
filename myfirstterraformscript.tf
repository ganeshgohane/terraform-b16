provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web-server" {
  ami = ""
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "mumbai"
}
