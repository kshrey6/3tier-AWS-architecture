#bastionRT
variable "bastionVpc_id" {
  type = any
}

variable "RTCidr" {
  type = any
}

variable "bastionIgwId" {
  type = any
}

#mainPublicRT
variable "mainVpc_id" {
  type = any
}

variable "mainRtCidr" {
  type = any
}

variable "mainIgwId" {
  type = any
}

#mainPrivateRt

variable "mainPrivateRtCidr" {
  type = any
}

variable "mainNatId" {
  type = any
}

