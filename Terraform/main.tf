resource "aws_security_group" "allow_tls" {
  name        = "My_security_group"
  description = "ALLOW ALL TRAFFIC"
  vpc_id      = var.vpc_id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_instance" "app-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids =  = [aws_]
  key_name = "mumbai"
}
 
