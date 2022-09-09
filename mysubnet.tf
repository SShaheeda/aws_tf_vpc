resource "aws_subnet" "mysubnet_public" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = "myvpcproject"
    cost_code ="1234"
    
  }
}
resource "aws_subnet" "mysubnet_private" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "myvpcproject"
    cost_code ="1234"
    
  }
}
