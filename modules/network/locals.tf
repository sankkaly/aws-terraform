locals {
  nat_count = {
    none   = 0,
    single = 1,
    per_AZ = length(var.public_subnet_cidrs)
  }[var.nat_gateway_strategy]
}