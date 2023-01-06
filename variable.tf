# VPC
variable "vpcCidrBlock" {
  type = string
}
variable "vpcName" {
  type = any
}

variable "bastionVpcCidrBlock" {
  type = string
}
variable "bastionVpcName" {
  type = any
}


#subnets
variable "bastionPublicACidr" {
  type = string
}
variable "aza" {
  type = any
}
variable "pvtSubnetACidr" {
  type = any
}
variable "azb" {
  type = any
}
variable "pvtSubnetBCidr" {
  type = any
}
variable "subnetNameA" {
  type = any
}
variable "subnetNameB" {
  type = any
}
variable "mainPublicACidr" {
  type = any
}

#RouteTable
variable "RTCidr" {
  type = any
}
variable "mainRtCidr" {
  type = any
}
variable "mainPrivateRtCidr" {
  type = any
}

# EC2 instances
variable "keyName" {
  type = any
}
variable "bastionAmiId" {
  type = any
}
variable "mainBastionInstanceType" {
  type = any
}
#privateA
variable "privateAInsatceAmiId" {
  type = any
}
variable "mainPrivateAInstanceType" {
  type = any
}
variable "privateInstanceAName" {
  type = any
}

#privateB
variable "privateBInsatceAmiId" {
  type = any
}
variable "mainPrivateBInstanceType" {
  type = any
}
variable "privateInstanceBName" {
  type = any
}