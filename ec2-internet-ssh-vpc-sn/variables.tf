variable "ami" {
  description = "Amazon Machine Image"
  default     = "ami-090f10efc254eaf55"
}

variable "key_name" {
  description = "Key access to ec2 instance"
  default     = "terraform"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "cidr_blocks" {
  description = "CIDR blocks map"

  default = {
    "vpc"    = "10.0.0.0/16"
    "subnet" = "10.0.1.0/24"
  }
}
