variable "vpc_name" {
  description = "VPC name. Will be used as the 'Name' tag value."
  type        = string
  default     = "main-vpc"
}

variable "public_a_name" {
  description = "Public subnet A name. Will be used as the 'Name' tag value."
  type        = string
  default     = "public-a"
}

variable "public_b_name" {
  description = "Public subnet B name. Will be used as the 'Name' tag value."
  type        = string
  default     = "public-b"
}

variable "private_a_name" {
  description = "Private subnet A name. Will be used as the 'Name' tag value."
  type        = string
  default     = "private-a"
}

variable "private_b_name" {
  description = "Private subnet B name. Will be used as the 'Name' tag value."
  type        = string
  default     = "private-b"
}

variable "database_a_name" {
  description = "Database subnet A name. Will be used as the 'Name' tag value."
  type        = string
  default     = "database-a"
}

variable "database_b_name" {
  description = "Database subnet B name. Will be used as the 'Name' tag value."
  type        = string
  default     = "database-b"
}

variable "database_sn_name" {
  description = "The name of the DB subnet group. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = ""
}
