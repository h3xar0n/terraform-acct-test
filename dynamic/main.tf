provider "aws" {
  region  = "us-west-1"
  profile = "personal"
}

variable "ingress_rules" {
  type    = list(number)
  default = []
}

resource "aws_instance" "myec2db" {
  ami           = "ami-01a6e31ac994bbc09"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }
}