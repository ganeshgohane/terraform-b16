resource "aws_security_group" "name" {
  
}

resource "aws_instance" "app-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = ["default"]
  key_name = "mumbai"
}
 
