provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

resource "aws_instance" "myec2" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }
}

module "dbserver" {
  source = "./db/mysql"
  dbname = "mydbserver"
}

output "dbprivateip" {
  value = module.dbserver.privateip
}

terraform {
  required_providers {
    aws = "~> 2.67"
  }
}