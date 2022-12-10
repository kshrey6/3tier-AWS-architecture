# main VPC
variable "vpcCidrBlock" {
  type = string
}

variable "vpcName" {
  type = any
}

# bastion VPC
variable "bastionVpcCidrBlock" {
  type = string
}

variable "bastionVpcName" {
  type = any
}