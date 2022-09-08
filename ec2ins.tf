

resource "aws_instance" "instan1" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  subnet_id    =  aws_subnet.mysubnet-public.id
  key_name = "ins123"
  security_groups=[aws_security_group.mysgp.id]
  associate_public_ip_address=true


  tags = {
    Name = "HelloWorld"
  }
}