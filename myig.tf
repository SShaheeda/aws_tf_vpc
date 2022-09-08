resource "aws_internet_gateway" "myig" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "myproject"
  }
}