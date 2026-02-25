# output "vpc" {
#   value = {
#     id   = aws_vpc.main.id
#     cidr = aws_vpc.main.cidr_block
#     subnets = {
#       private = aws_subnet.private.id
#     }
#   }
# }

output "locals" {
  value = {
    resource_name_prefix = local.resource_name_prefix
  }
}