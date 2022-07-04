variable "ami_id" {
 type = string
 default = "ami-02d1e544b84bf7502"
 description = "AMI-ID"
}

variable "instance_type" {
 description = "please enter instance type t2.micro or t3.micro"
}

variable "vpc_id" {
 default = "vpc-0d7c9327369dbf11d"
} 

variable "key_name" {
 default = "mumbai"
  
}