# main
output "vpcCidrBlock" {
  value = aws_vpc.main.cidr_block
}
output "mainVpcId" {
  value = aws_vpc.main.id
}

# bastion
output "bastionVpcCidrBlock" {
  value = aws_vpc.bastion.cidr_block
}

output "bastionVpcId" {
  value = aws_vpc.bastion.id
}