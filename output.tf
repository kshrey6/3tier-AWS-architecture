output "MainPrivateSubnetAInfo" {
  value = join(",",module.subnets.privateSubnetA)
}

output "MainPrivateSubnetBInfo" {
  value = join(",",module.subnets.privateSubnetB)
}


output "mainBastionIp" {
  value = module.ec2.mainBastionIp
}

output "mainPrivateAIp" {
  value = module.ec2.mainPrivateAIp
}

output "mainPrivateBIp" {
  value = module.ec2.mainPrivateBIp
}