module "vpc" {
  source                  = "./modules/vpc"
  # main
  vpcCidrBlock            = var.vpcCidrBlock
  vpcName                 = var.vpcName

  #bastion
  bastionVpcCidrBlock     = var.bastionVpcCidrBlock
  bastionVpcName          = var.bastionVpcName
}


# IGW
module "igw" {
  source                  = "./modules/igw"
  mainVpcId               = module.vpc.mainVpcId
  bastionVpcId            = module.vpc.bastionVpcId
}

#NatGW
module "natGw" {
  source                  = "./modules/nat"
  natSubnetId             = module.subnets.mainPublicA
}

# Subnets
module "subnets" {
  source                  = "./modules/subnets"
  bastionPublicVpcId      = module.vpc.bastionVpcId
  bastionPublicACidr      = var.bastionPublicACidr

  mainVpcId               = module.vpc.mainVpcId

  #privateSubnetA
  aza                     = var.aza
  pvtSubnetACidr          = var.pvtSubnetACidr
  subnetNameA             = var.subnetNameA

  #privateSubnetB
  azb = var.azb
  pvtSubnetBCidr          = var.pvtSubnetBCidr
  subnetNameB             = var.subnetNameB
  
  #publicSubnetA
  mainPublicACidr         = var.mainPublicACidr

}

#RouteTable
#bastion
module "routeTable" {
  source                  = "./modules/routeTable"
  bastionVpc_id           = module.vpc.bastionVpcId
  RTCidr                  = var.RTCidr
  bastionIgwId            = module.igw.bastionIgwId

#mainPrivate
  mainVpc_id              = module.vpc.mainVpcId
  mainPrivateRtCidr       = var.mainPrivateRtCidr
  mainNatId               = module.natGw.mainNatId

#mainPublic
  mainRtCidr              = var.mainRtCidr
  mainIgwId               = module.igw.mainIgwId
}

#RT Association
module "routeTableAssociation" {
  source                  = "./modules/routeTableAssociation"
  bastionSubnetId         = module.subnets.bastionPublicSubnet
  bastionRtId             = module.routeTable.bastionRtId

  mainPulicSubnetId       = module.subnets.mainPublicA
  mainPublicRtId          = module.routeTable.mainPublicRtId

  mainPrivateSubnetAId    = module.subnets.privateSubnetA
  mainPrivateSubnetBId    = module.subnets.privateSubnetB
  mainPrivateRtId         = module.routeTable.mainPrivateRtId

}

#instance
module "ec2" {
  source = "./modules/ec2"
  keyName = var.keyName
  bastionAmiId = var.bastionAmiId
  mainBastionInstanceType = var.mainBastionInstanceType
  mainBastionSubnetId = module.subnets.mainPublicA
#PrivateSubnetA
  privateAInsatceAmiId = var.privateAInsatceAmiId
  mainprivateSubnetAId = module.subnets.privateSubnetA
  mainPrivateAInstanceType = var.mainPrivateAInstanceType
  privateInstanceAName = var.privateInstanceAName
#PrivateSubnetB
  privateBInsatceAmiId = var.privateBInsatceAmiId
  mainprivateSubnetBId = module.subnets.privateSubnetB
  mainPrivateBInstanceType = var.mainPrivateBInstanceType
  privateInstanceBName = var.privateInstanceBName

}