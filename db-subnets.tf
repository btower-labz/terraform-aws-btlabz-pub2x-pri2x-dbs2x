variable "database_dsg_name" {
  description = "The name of the DB subnet group."
  type        = string
  default     = "main-dsg"
}

variable "database_dsg_description" {
  description = "The description of the DB subnet group."
  type        = string
  default     = "Managed by Terraform"
}

resource "aws_db_subnet_group" "main" {
  name        = var.database_dsg_name
  description = var.database_dsg_description
  subnet_ids = [
    module.database_a.subnet_id,
    module.database_b.subnet_id
  ]

  tags = merge(
    map(
      "Name", var.database_dsg_name,
    ),
    var.tags
  )
}

output "database_dsg_id" {
  description = "Database subnet group identifier."
  value       = aws_db_subnet_group.main.id
}

output "database_dsg_arn" {
  description = "Database subnet group arn."
  value       = aws_db_subnet_group.main.arn
}

output "database_dsg_name" {
  description = "Database subnet group name."
  value       = aws_db_subnet_group.main.name
}
