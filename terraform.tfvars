#vpc
vpcCidrBlock = "172.32.0.0/16"
vpcName = "synVPC"

bastionVpcCidrBlock = "192.168.0.0/16"
bastionVpcName = "SynBastion"


#subnet
#BastionSubnet
bastionPublicACidr = "192.168.128.0/17"
#privateSubnetA
aza = ["us-west-2a"]
pvtSubnetACidr = ["172.32.128.0/18","172.32.96.0/19","172.32.80.0/20"]
subnetNameA = ["FrontendA", "ApplicationA", "DBA"]
#privateSubnetB
azb = ["us-west-2b"]
pvtSubnetBCidr = ["172.32.216.0/21","172.32.224.0/19","172.32.192.0/20"]
subnetNameB = ["FrontendB", "ApplicationB", "DBB"]