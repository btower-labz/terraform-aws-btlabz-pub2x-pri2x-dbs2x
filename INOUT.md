# Terraform inputs and outputs.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| az\_a | Availability zone for 'A' subnets. Both private and public. | `string` | `""` | no |
| az\_b | Availability zone for 'B' subnets. Both private and public. | `string` | `""` | no |
| database\_a\_cidr | Database network A CIDR range. | `string` | `"172.18.21.0/24"` | no |
| database\_a\_name | Database subnet A name. Will be used as the 'Name' tag value. | `string` | `"database-a"` | no |
| database\_b\_cidr | Database network B CIDR range. | `string` | `"172.18.22.0/24"` | no |
| database\_b\_name | Database subnet B name. Will be used as the 'Name' tag value. | `string` | `"database-b"` | no |
| igw\_name | IGW name. Will be used as the 'Name' tag value. | `string` | `"main-igw"` | no |
| nat\_a\_name | NAT-A name. Will be used as the 'Name' tag value. | `string` | `"nat-a"` | no |
| nat\_b\_name | NAT-B name. Will be used as the 'Name' tag value. | `string` | `"nat-b"` | no |
| private\_a\_cidr | Private network A CIDR range. | `string` | `"172.18.11.0/24"` | no |
| private\_a\_name | Private subnet A name. Will be used as the 'Name' tag value. | `string` | `"private-a"` | no |
| private\_b\_cidr | Private network B CIDR range. | `string` | `"172.18.12.0/24"` | no |
| private\_b\_name | Private subnet B name. Will be used as the 'Name' tag value. | `string` | `"private-b"` | no |
| public\_a\_cidr | Public network A CIDR range. | `string` | `"172.18.1.0/24"` | no |
| public\_a\_name | Public subnet A name. Will be used as the 'Name' tag value. | `string` | `"public-a"` | no |
| public\_b\_cidr | Public network B CIDR range. | `string` | `"172.18.2.0/24"` | no |
| public\_b\_name | Public subnet B name. Will be used as the 'Name' tag value. | `string` | `"public-b"` | no |
| rt\_database\_a\_name | Route table name for database subnet A. | `string` | `"rt-database-a"` | no |
| rt\_database\_b\_name | Route table name for database subnet B. | `string` | `"rt-database-b"` | no |
| rt\_private\_a\_name | Route table name for private subnet A. | `string` | `"rt-private-a"` | no |
| rt\_private\_b\_name | Route table name for private subnet B. | `string` | `"rt-private-b"` | no |
| rt\_public\_name | Main public route table name. | `string` | `"rt-public"` | no |
| tags | Additional tags. | `map(string)` | `{}` | no |
| vpc\_cidr | VPC CIDR range. | `string` | `"172.18.0.0/16"` | no |
| vpc\_name | VPC name. Will be used as the 'Name' tag value. | `string` | `"main-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| database\_a | Database subnet A identifier. |
| database\_b | Database subnet B identifier. |
| private\_a | Private subnet A identifier. |
| private\_b | Private subnet B identifier. |
| public\_a | Public subnet A identifier. |
| public\_b | Public subnet B identifier. |
| vpc\_id | VPC identifier. |

