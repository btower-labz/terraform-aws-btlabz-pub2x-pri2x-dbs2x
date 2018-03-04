variable "igw_name" {
  description = "IGW name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "main-igw"
}

variable "rt_public_name" {
  description = "Main public route table name."
  type        = "string"
  default     = "rt-public"
}

variable "rt_private_a_name" {
  description = "Route table name for private subnet A."
  type        = "string"
  default     = "rt-private-a"
}

variable "rt_private_b_name" {
  description = "Route table name for private subnet B."
  type        = "string"
  default     = "rt-private-b"
}

variable "rt_database_a_name" {
  description = "Route table name for database subnet A."
  type        = "string"
  default     = "rt-database-a"
}

variable "rt_database_b_name" {
  description = "Route table name for database subnet B."
  type        = "string"
  default     = "rt-database-b"
}
