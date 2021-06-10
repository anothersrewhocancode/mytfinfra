provider "aws" {}

variable "foo_vpc_cidr" {
  description = "my supposed to be vpc cidr"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.foo_vpc_cidr
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
