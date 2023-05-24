# provider "aws" {
#   region = "us-west-2"
# }

# resource "aws_vpc" "default" {
#   cidr_block = "10.0.0.0/16"
# }

# resource "aws_subnet" "public" {
#   vpc_id = aws_vpc.default.id
#   cidr_block = "10.0.0.0/24"
#   availability_zone = "us-east-1a"
# }

# resource "aws_subnet" "private" {
#   vpc_id = aws_vpc.default.id
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "us-east-1b"
# }

# resource "aws_internet_gateway" "default" {
#   vpc_id = aws_vpc.default.id
# }



# resource "aws_eip" "zaman_eip" {
#   vpc           = true
#   lifecycle {
#     prevent_destroy = false
#   }
# }


# resource "aws_nat_gateway" "default" {
#   subnet_id = aws_subnet.public.id
#   allocation_id = aws_eip.zaman_eip.id
 
# }

# resource "aws_route" "public" {
#   route_table_id = aws_vpc.default.main_route_table_id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.default.id
# }

# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.default.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.default.id
#   }
# }