# BT-Labz AWS VPC parts.

## VPC contruction. 2x AZ. No NAT.

Terraform registry: ...

### Project structure

See here: [INPUTS\OUTPUTS](INOUT.md)

### Inputs\Outputs

See here: [FILES](FILES.md)

### Features

* High Availability (double AZ)
* Public subnets.
* Private subnets.
* Database subnets.

### Usage

```
module "vpc-staging" {
  source = "git::git@gitlab.com:btower-labz-terraform/vpc-pub2x-pri2x-dbs2x-no-nat.git?ref=latest"

  vpc_name = "vpc-staging"

  vpc_cidr       = "172.18.0.0/16"
  public_a_cidr  = "172.18.1.0/24"
  public_b_cidr  = "172.18.2.0/24"
  private_a_cidr = "172.18.11.0/24"
  private_b_cidr = "172.18.12.0/24"
  database_a_cidr = "172.18.21.0/24"
  database_b_cidr = "172.18.22.0/24"

  tags = {
    Environment = "Staging"
    Customer    = "ACME"
  }
}
```
