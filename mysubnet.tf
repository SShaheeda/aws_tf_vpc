resource "aws_subnet" "mysubnet-public" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "myvpcproject"
    cost_code ="1234"
    
  }
}