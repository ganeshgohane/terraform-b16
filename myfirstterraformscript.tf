provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web-server" {
  ami = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "tomcatohio"
}


