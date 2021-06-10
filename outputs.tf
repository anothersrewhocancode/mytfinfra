output "myvpccidr" {
  value = aws_vpc.myvpc.id
}

output "mysubcidr" {
  value = aws_subnet.mysubnet.id
}
