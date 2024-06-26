variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "ingress_from_port" {
  description = "The start port for ingress rules"
  type        = number
}

variable "ingress_to_port" {
  description = "The end port for ingress rules"
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol for ingress rules"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for ingress rules"
  type        = list(string)
}

