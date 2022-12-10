module "vpc" {
  source = "./modules/vpc"
  # main
  vpcCidrBlock = var.vpcCidrBlock
  vpcName = var.vpcName

  #bastion
  bastionVpcCidrBlock = var.bastionVpcCidrBlock
  bastionVpcName = var.bastionVpcName
}