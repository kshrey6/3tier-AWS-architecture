resource "aws_subnet" "bastionPublicA" {
  vpc_id     = var.bastionPublicVpcId
  cidr_block = var.bastionPublicACidr

  tags = {
    Name = "BastionPublicSubnet"
  }
}

# MainSubnets

resource "aws_subnet" "mainPublicA" {
  vpc_id     = var.mainVpcId
  cidr_block = var.mainPublicACidr

  tags = {
    Name = "mainPublicSubnet"
  }
}

resource "aws_subnet" "privateSubnetA" {
  count = length(var.pvtSubnetACidr)
  vpc_id                  = var.mainVpcId
  availability_zone       = element(var.aza, count.index)
  cidr_block              = element(var.pvtSubnetACidr, count.index)
  tags = {
    Name = element(var.subnetNameA, count.index)
  }
}

resource "aws_subnet" "privateSubnetB" {
  count = length(var.pvtSubnetACidr)
  vpc_id                  = var.mainVpcId
  availability_zone       = element(var.azb, count.index)
  cidr_block              = element(var.pvtSubnetBCidr, count.index)
  tags = {
    Name = element(var.subnetNameB, count.index)
  }
}
