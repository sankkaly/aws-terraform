variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDRs"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDRs"
}

variable "tags" {
  type        = map(string)
  description = "Common resource tags"
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