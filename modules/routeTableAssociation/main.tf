resource "aws_route_table_association" "bastionSubnet" {
  subnet_id      = var.bastionSubnetId
  route_table_id = var.bastionRtId
}

resource "aws_route_table_association" "mainPublicSubnetA" {
  subnet_id      = var.mainPulicSubnetId
  route_table_id = var.mainPublicRtId
}

resource "aws_route_table_association" "mainPrivateSubnetA" {
  count = length(var.mainPrivateSubnetAId)
  subnet_id      = var.mainPrivateSubnetAId[count.index]
  route_table_id = var.mainPrivateRtId
}

resource "aws_route_table_association" "mainPrivateSubnetB" {
count = length(var.mainPrivateSubnetAId)
  subnet_id      = var.mainPrivateSubnetAId[count.index]
  route_table_id = var.mainPrivateRtId
}
