variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones used by the VPC"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

variable "nat_gateway_strategy" {
  type        = string
  description = "Single Nat Gateway for dev and test environment select SINGLE OR PER_AZ FOR PROD OR NONE TO DISABLE"
  default     = "single"

  validation {
    condition     = contains(["none", "single", "per_az"], var.nat_gateway_strategy)
    error_message = "select any one"
  }
}


