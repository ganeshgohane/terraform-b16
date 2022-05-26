resource "aws_instance" "web-server" {
  ami = var.ami_id
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "mumbai"
}

resource "aws_instance" "app-server" {
  ami = var.ami_id
  instance_type = var.
  security_groups = ["default"]
  key_name = "mumbai"
}
 
variable "ami_id" {
 type = string
 default = "ami-079b5e5b3971bd10d"
 description = "AMI-ID"
}

variable "instance_type" {
 type = string
 default = "t2.micro"
 description = "INSTANCE-TYPE"

  
}