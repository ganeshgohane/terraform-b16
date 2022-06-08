provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "mumbai"
  user_data = EOF
  !#/bin/bash
  yum update -y
  yum install httpd -y
  touch /var/www/html/index.html
  echo "<h1> hellow world <h1>" >/var/www/html/index.html
  systemctl start httpd 
  systemctl enable httpd
  EOF 
}
