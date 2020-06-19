provider "aws" {
  region  = "us-west-1"
  profile = "personal"
}

variable "ingress_rules" {
  type    = list(number)
  default = [25, 80, 443, 8080, 8443]
}

variable "egress_rules" {
  type    = list(number)
  default = [443, 8443]
}

resource "aws_instance" "myec2db" {
  ami           = "ami-01a6e31ac994bbc09"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }
}