variable "dbname" {
  type = string
}

resource "aws_instance" "myec2db" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"

  tags = {
    Name = var.dbname
  }
}
