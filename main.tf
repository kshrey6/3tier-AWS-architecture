module "vpc" {
  source = "./modules/vpc"
  # main
  vpcCidrBlock = var.vpcCidrBlock
  vpcName = var.vpcName

  #bastion
  bastionVpcCidrBlock = var.bastionVpcCidrBlock
  bastionVpcName = var.bastionVpcName
}


# IGW
module "igw" {
  source = "./modules/igw"
  mainVpcId = module.vpc.mainVpcId
  bastionVpcId = module.vpc.bastionVpcId
}

# Subnets

module "subnets" {
  source = "./modules/subnets"
  bastionPublicVpcId = module.vpc.bastionVpcId
  bastionPublicACidr = var.bastionPublicACidr

  mainVpcId = module.vpc.mainVpcId
  #privateSubnetA
  aza = var.aza
  pvtSubnetACidr = var.pvtSubnetACidr
  subnetNameA = var.subnetNameA

  #privateSubnetB
  azb = var.azb
  pvtSubnetBCidr = var.pvtSubnetBCidr
  subnetNameB = var.subnetNameB

}