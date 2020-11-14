module "main_vpc" {
  source   = "btower-labz/btlabz-vpc-base/aws"
  version  = "0.1.0"
  vpc_name = var.vpc_name
  igw_name = var.igw_name
  cidr     = var.vpc_cidr
  rt_name  = var.rt_public_name
  tags = merge(
    var.tags,
    var.vpc_tags
  )
}

module "public_a" {
  source  = "btower-labz/btlabz-pub-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.public_a_name
  az      = local.az_a
  cidr    = var.public_a_cidr
  rt_id   = module.main_vpc.rt_id
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.public_subnet_tags
  )
}

module "public_b" {
  source  = "btower-labz/btlabz-pub-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.public_b_name
  az      = local.az_b
  cidr    = var.public_b_cidr
  rt_id   = module.main_vpc.rt_id
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.public_subnet_tags
  )
}

module "private_a" {
  source  = "btower-labz/btlabz-pri-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.private_a_name
  az      = local.az_a
  cidr    = var.private_a_cidr
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.private_subnet_tags
  )
}

module "private_b" {
  source  = "btower-labz/btlabz-pri-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.private_b_name
  az      = local.az_b
  cidr    = var.private_b_cidr
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.private_subnet_tags
  )
}

module "database_a" {
  source  = "btower-labz/btlabz-pri-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.database_a_name
  az      = local.az_a
  cidr    = var.database_a_cidr
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.database_subnet_tags
  )
}

module "database_b" {
  source  = "btower-labz/btlabz-pri-sn/aws"
  version = "0.1.0"
  vpc_id  = module.main_vpc.vpc_id
  name    = var.database_b_name
  az      = local.az_b
  cidr    = var.database_b_cidr
  tags = merge(
    var.tags,
    var.subnet_tags,
    var.database_subnet_tags
  )
}

module "nat_a" {
  source    = "btower-labz/btlabz-nat-base/aws"
  version   = "0.1.0"
  subnet_id = module.public_a.subnet_id
  name      = var.nat_a_name
  tags = merge(
    var.tags,
    var.nat_tags,
  )
}

module "nat_b" {
  source    = "btower-labz/btlabz-nat-base/aws"
  version   = "0.1.0"
  subnet_id = module.public_b.subnet_id
  name      = var.nat_b_name
  tags = merge(
    var.tags,
    var.nat_tags,
  )
}
