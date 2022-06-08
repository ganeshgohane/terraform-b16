provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web-server" {
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "mumbai"
  user_data = << EOF
		#! /bin/bash
    sudo apt-get update
		sudo apt-get install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
	EOF
	tags = {
		Name = "Terraform"	
		Batch = "5AM"
	}