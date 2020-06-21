provider "aws" {
  region  = "us-west-1"
  profile = "personal"
}

provider "aws" {
  region  = "us-east-1"
  profile = "personal"
  alias   = "eastcoast"
}

resource "aws_vpc" "eastvpc" {
  cidr_block = "10.0.0.0/16"
  provider   = aws.eastcoast
}

resource "aws_vpc" "westvpc" {
  cidr_block = "10.0.0.0/16"
}
