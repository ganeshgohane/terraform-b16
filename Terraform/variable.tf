variable "ami_id" {
 type = string
 default = "ami-079b5e5b3971bd10d"
 description = "AMI-ID"
}

variable "instance_type" {
 description = "please enter instance type t2.micro or t3.micro"
}

variable "vpc_id" {
 default = ""
} 