output "vpc_id" {
    value = aws_vpc.myvpc.id
}

output "public_subnet_id" {
    value = aws_subnet.mysubnet_public.id
}

output "private_subnet_id" {
    value = ""
}

output "internet_gateway_id" {
    value = aws_internet_gateway.myig.id
}

output "nat_gateway_id"{
    value=""
}