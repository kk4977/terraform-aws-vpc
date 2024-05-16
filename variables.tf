###### PROJECT ###########################################################################################
variable "project_names" {
  type = string

}
variable "environment" {
  type    = string
  default = "dev"

}
variable "common_tags" {
  type = map

}

#### VPC #################################################################################################
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"

}
variable "enable_dns_hostnames" {
  type    = bool
  default = true

}

variable "vpc_tags" {
  default = {}
  type    = map

}

#### IGW #####################################
  variable "igw_tags"  {
    type = map
    default = {}
  }
#### Public Subnets ##########################
variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please provide the valid 2 public subnet cidrs"

    }
}
variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}