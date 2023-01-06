#vpc
#main
vpcCidrBlock            = "172.32.0.0/16"
vpcName                 = "synVPC"
#bastion
bastionVpcCidrBlock     = "192.168.0.0/16"
bastionVpcName          = "SynBastion"

#subnet
#BastionSubnet
bastionPublicACidr      = "192.168.128.0/17"

#privateSubnetA
aza                     = ["us-west-2a"]
pvtSubnetACidr          = ["172.32.128.0/18","172.32.96.0/19","172.32.80.0/20"]
subnetNameA             = ["FrontendA", "ApplicationA", "DBA"]

#privateSubnetB
azb                     = ["us-west-2b"]
pvtSubnetBCidr          = ["172.32.216.0/21","172.32.224.0/19","172.32.192.0/20"]
subnetNameB             = ["FrontendB", "ApplicationB", "DBB"]

#publciSubnetA
mainPublicACidr         = "172.32.64.0/20"

# RouteTable
RTCidr                  = "0.0.0.0/0"
mainPrivateRtCidr       = "0.0.0.0/0"
mainRtCidr              = "0.0.0.0/0"

#ec2 Instance
keyName                 = "us-west-2"
bastionAmiId            = "ami-03f8756d29f0b5f21"
mainBastionInstanceType = "t2.micro"
#privateSubnetA
privateAInsatceAmiId     = "ami-03f8756d29f0b5f21"
mainPrivateAInstanceType = "t2.micro"
privateInstanceAName     = ["FrontendA", "ApplicationA"]
#privateSubnetB
privateBInsatceAmiId     = "ami-03f8756d29f0b5f21"
mainPrivateBInstanceType = "t2.micro"
privateInstanceBName     = ["FrontendB", "ApplicationB"]