output "vpc_id" {
  description = "VPC identifier."
  value       = module.main_vpc.vpc_id
}

output "public_a" {
  description = "Public subnet A identifier."
  value       = module.public_a.subnet_id
}

output "public_b" {
  description = "Public subnet B identifier."
  value       = module.public_b.subnet_id
}

output "private_a" {
  description = "Private subnet A identifier."
  value       = module.private_a.subnet_id
}

output "private_b" {
  description = "Private subnet B identifier."
  value       = module.private_b.subnet_id
}

output "database_a" {
  description = "Database subnet A identifier."
  value       = module.database_a.subnet_id
}

output "database_b" {
  description = "Database subnet B identifier."
  value       = module.database_b.subnet_id
}

