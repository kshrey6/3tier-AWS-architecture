module "vpc" {
  source = "./modules/vpc"
  vpcCidrBlock = var.vpcCidrBlock
  vpcName = var.vpcName
}