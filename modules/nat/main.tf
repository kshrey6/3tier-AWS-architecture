resource "aws_eip" "mainNatEip" {
  vpc = true
 }

resource "aws_nat_gateway" "mainNat1" {
  allocation_id     = aws_eip.mainNatEip.id
  subnet_id         = var.natSubnetId
  connectivity_type = "public"
  tags = {
    Name = "mainPubcliRoutTable"
  }
}