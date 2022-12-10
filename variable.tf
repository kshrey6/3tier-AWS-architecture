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
