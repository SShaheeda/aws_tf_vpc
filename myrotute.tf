resource "aws_route_table" "myrtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.igw_cidr_block
    gateway_id = aws_internet_gateway.myig.id
  }

 

  tags = {
    Name = "publicrt table"
  }
}

resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = aws_subnet.mysubnet_public.id
  route_table_id = aws_route_table.myrtable.id
}

resource "aws_route_table" "myrtable_privates" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = [var.nat_cidr_block]
    network_interface_id = var.nat_gateway_instance_id
  }

   tags = {
    Name = "privatert table"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  subnet_id      = aws_subnet.mysubnet_private.id
  route_table_id = aws_route_table.myrtable_privates.id
}

