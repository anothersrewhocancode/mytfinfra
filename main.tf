provider "aws" {}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name: "myvpc"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block= "10.0.10.0/25"
  tags = {
     Name: "mysub"
  }
}
