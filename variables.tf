variable "igw_cidr_block" {
    type = string
    description = "cidr range of igw"
    default = "0.0.0.0/0"
}
variable "vpc_cidr" {                                                                                       
    type = string
    description = "cidr range of vpc"
}

variable "public_subnet_cidr" {
    type = string
    description = "cidr range of public subnet"
}
variable "private_subnet_cidr" {
    type = string
    description = "cidr range of private subnet"
    default = ""
}

variable "nat_gateway_instance_id" {
    type = string
    description = "nat_gateway_instance_id"
}