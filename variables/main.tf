provider "aws" {
  region  = "us-west-1"
  profile = "personal"
}

variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "whitelist" {
  type    = list(string)
  default = ["Value1", "Value2"]
}

variable "mymap" {
  type = map
  default = {
    Key1 = "Value1"
    Key2 = 32
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = vars.vpcname
  }
}
