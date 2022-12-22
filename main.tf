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