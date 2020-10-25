# BT-Labz AWS VPC parts.

## VPC contruction. 2x AZ. HA NAT.

Terraform registry: ...

### Project structure

See here: [FILES](FILES.md)

### Inputs\Outputs

See here: [INPUTS\OUTPUTS](INOUT.md)

### Features

* High Availability (double AZ)
* Public subnets.
* Private subnets.
* Database subnets and the subnet group

### Usage

```
module "vpc_staging" {
  source = "git::ssh://git@gitlab.com/btower-labz-terraform/terraform-aws-btlabz-pub2x-pri2x-dbs2x.git?ref=master"

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
