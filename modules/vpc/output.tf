# main
output "vpcCidrBlock" {
  value = aws_vpc.main.cidr_block
}


# bastion
output "bastionVpcCidrBlock" {
  value = aws_vpc.bastion.cidr_block
}