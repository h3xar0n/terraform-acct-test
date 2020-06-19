provider "aws" {
  region  = "us-west-1"
  profile = "personal"
}

resource "aws_instance" "myec2" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }

  depends_on = ["aws_instance.myec2db"]
}

resource "aws_instance" "myec2db" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}