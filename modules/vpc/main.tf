resource "aws_vpc" "main" {
  cidr_block       = var.vpcCidrBlock
  instance_tenancy = "default"

  tags = {
    Name = var.vpcName
  }
}

resource "aws_vpc" "bastion" {
  cidr_block       = var.bastionVpcCidrBlock
  instance_tenancy = "default"

  tags = {
    Name = var.bastionVpcName
  }
}
