resource "aws_route_table" "bastionRt" {
  vpc_id = var.bastionVpc_id

  route {
    cidr_block = var.RTCidr
    gateway_id = var.bastionIgwId
  }

  tags = {
    Name = "bastionRoutTable"
  }
}

resource "aws_route_table" "mainPublicRt" {
  vpc_id = var.mainVpc_id

  route {
    cidr_block = var.mainRtCidr
    gateway_id = var.mainIgwId
  }

  tags = {
    Name = "mainPubcliRoutTable"
  }
}

resource "aws_route_table" "mainPrivateRt" {
  vpc_id = var.mainVpc_id

  route {
    cidr_block = var.mainPrivateRtCidr
    gateway_id = var.mainNatId
  }

  tags = {
    Name = "mainPrivateRoutTable"
  }
}
