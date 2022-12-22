#IGW for main vpc
resource "aws_internet_gateway" "mainIgw" {
  vpc_id = var.mainVpcId

  tags = {
    Name = "mainIGW"
  }
}

#IGW for bastion VPC
resource "aws_internet_gateway" "bastoionIgw" {
  vpc_id = var.bastionVpcId

  tags = {
    Name = "bastionIGW"
  }
}