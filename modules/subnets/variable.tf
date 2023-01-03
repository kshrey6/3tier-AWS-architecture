# bastionSubnet
variable "bastionPublicVpcId" {
  type = string
}

variable "bastionPublicACidr" {
  type = string
}


variable "mainVpcId" {
  type = any
}

#privateA
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