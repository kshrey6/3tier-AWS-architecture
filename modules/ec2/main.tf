resource "aws_key_pair" "synergykey" {
  key_name   = var.keyName
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQChYpolnDQc8lmvbxl+MuBOPHX1d5dkaeKTA4BRvclPGdXwG6TvnNJcFOzw0mUjgF9sWZhk4mvpluyzujh9sZyJPpEtntnt4aFRRmkccjBGO1KPE8frjtlU4xqbl5dytNDsp7VqHwm68JZaZVJCct76HUsqDhh5RU73isK3Voilc5EZ+PkQ8AZA4BFZt4Biu1IERv59MTJT0A1lXIlAY42j92L5p9czITeTasgTSVCrX8SGQjQKr3b5xx25MGOyoJ9uT7IyxOxnm6Gd0kVGdcjy5czKGcPmE1jKj1nAppNBwlHCVVOPXPQBJDvb0lPpWoE/VucacRh3YVeAZOzfJ/reJecW9rytVHVw5UWICXEKkFLs2bnvB0l3nZxgu6c3DnhMXGxZPb0pq/7HKqpKlWdOmhMjdVFowLYTvwblD9cRyjuwed0vXOem5/dNjHs3KGOMCxLnJxIiP87G5SZmIpNDNABFwKLkmFG68aIeE3i1gRHGJOJnV41hYMQ9PBhj+GVbUC5R3bY7ddbIREFu2TJoxcfEMlQPGjEeP84h0DcTk4k53M3gN/tutBeO+9DhTxHcfXmY++MJbuVfsRunWD4aZIsJCfex8ypmT2QAcz8tVi2CckqtM6jgneocEvi3Pni+3Zd6G/UkfgDqgxo+3BQL88scU32K0z7HS/zNFkVN1Q== shrey@Ubuntu"
}

resource "aws_instance" "mainBastion" {
  ami                       = var.bastionAmiId
  instance_type             = var.mainBastionInstanceType
  subnet_id                 = var.mainBastionSubnetId
  key_name                  = var.keyName
  security_groups = var.sgId
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