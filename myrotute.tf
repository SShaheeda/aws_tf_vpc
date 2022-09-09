resource "aws_route_table" "myrtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.igw_cidr_block
    gateway_id = aws_internet_gateway.myig.id
  }

 

  tags = {
    Name = "myproject"
  }
}

resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = aws_subnet.mysubnet-public.id
  route_table_id = aws_route_table.myrtable.id
}