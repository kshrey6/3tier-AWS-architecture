resource "aws_instance" "mainBastion" {
  ami                       = var.bastionAmiId
  instance_type             = var.mainBastionInstanceType
  subnet_id                 = var.mainBastionSubnetId
  key_name                  = var.keyName
  tags = {
    Name = "MainBastionInstance"
  }
}

resource "aws_instance" "privateInstanceA" {
  count                     = length(var.mainprivateSubnetAId) -1
  ami                       = var.privateAInsatceAmiId
  instance_type             = var.mainPrivateAInstanceType  
  subnet_id                 = tolist(var.mainprivateSubnetAId)[count.index]
  key_name                  = var.keyName
  tags = {
    Name = element(var.privateInstanceAName, count.index)
  }  
}

resource "aws_instance" "privateInstanceB" {
  count                     = length(var.mainprivateSubnetBId) -1
  ami                       = var.privateBInsatceAmiId
  instance_type             = var.mainPrivateBInstanceType  
  subnet_id                 = tolist(var.mainprivateSubnetBId)[count.index]
  key_name                  = var.keyName
  tags = {
    Name = element(var.privateInstanceBName, count.index)
  }  
}