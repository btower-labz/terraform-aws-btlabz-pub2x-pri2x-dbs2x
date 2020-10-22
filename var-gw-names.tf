variable "igw_name" {
  description = "IGW name. Will be used as the 'Name' tag value."
  type        = string
  default     = "main-igw"
}

variable "nat_a_name" {
  description = "NAT-A name. Will be used as the 'Name' tag value."
  type        = string
  default     = "nat-a"
}

variable "nat_b_name" {
  description = "NAT-B name. Will be used as the 'Name' tag value."
  type        = string
  default     = "nat-b"
}
