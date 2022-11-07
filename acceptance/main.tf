resource "aws_vpc" "modularization_vpc" {
  cidr_block        = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name = "vpc-${local.environment}"
  }
}

resource "aws_subnet" "all_subnets" {
  for_each          = var.subnets
  vpc_id            = aws_vpc.modularization_vpc.id
  availability_zone = each.value["az"]
  cidr_block        = each.value["cidr_block"]

  tags = {
    Name = "subnet-${local.environment}-${each.key}"
  }
}
