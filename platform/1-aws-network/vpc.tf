locals {
  vpc = {
    dev = {
        cidr = "10.0.0.0/16"
        subnets = {
            private = "10.0.1.0/24"
        }
    }
    prod = {
        cidr = "10.1.0.0/16"
        subnets = {
            private = "10.1.1.0/24"
        }
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block = local.vpc[local.environment].cidr

  tags = {
    Name = "${local.resource_name_prefix}-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.vpc[local.environment].subnets.private
}