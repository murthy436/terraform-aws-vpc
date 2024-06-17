
###Project variables ####
variable "project_name" {
  type = string
}

variable "environment" {
  type = string
  default = "dev"
}

variable "common_tags" {
  type = map
}

#vpc variables ####
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "vpc_tags" {
  type = map
  default = {}
}


###IGW variables ###
variable "igw_tags" {
  type = map
  default = {}
}


### Public subent variables ##

variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet cidrs"
  }
}

variable "public_subnet_cidrs_tags" {
  type = map
  default = {}
}

### Private subent variables ###

variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private subnet cidrs"
  }
}
variable "private_subnet_cidrs_tags"{
    type = map
    default = {}
}

### Database subnet variables ###

variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid database subnet cidrs"
  }
}

variable "database_subnet_cidrs_tags" {
  type = map
  default = {}
}

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

### Nat gateway variables ###

variable "nat_gateway_cidrs_tags" {
  type = map
  default = {}
}

### Public route table variables ###

variable "public_route_table_tags" {
  type = map
  default = {}
}

### Private route table variables ###

variable "private_route_table_tags" {
  type = map
  default = {}
}

### Database route table variables ###

variable "database_route_table_tags" {
  type = map
  default = {}
}


### Peering variables ###

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  type = map
  default = {}
}