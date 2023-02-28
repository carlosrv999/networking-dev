data "huaweicloud_availability_zones" "zones" {}

resource "huaweicloud_vpc" "default" {
  name = "vpc-canvia-dev"
  cidr = "10.0.0.0/16"

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "private_1" {
  name              = "subnet_private_1"
  cidr              = "10.0.0.0/24"
  gateway_ip        = "10.0.0.1"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[0]

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "private_2" {
  name              = "subnet_private_2"
  cidr              = "10.0.1.0/24"
  gateway_ip        = "10.0.1.1"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[1]

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "public_1" {
  name              = "subnet_public_1"
  cidr              = "10.0.2.0/24"
  gateway_ip        = "10.0.2.1"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[0]

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "public_2" {
  name              = "subnet_public_2"
  cidr              = "10.0.3.0/24"
  gateway_ip        = "10.0.3.1"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[1]

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "database_1" {
  name              = "subnet_database_1"
  cidr              = "10.0.4.0/25"
  gateway_ip        = "10.0.4.1"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[0]

  tags = local.common_tags
}

resource "huaweicloud_vpc_subnet" "database_2" {
  name              = "subnet_database_2"
  cidr              = "10.0.4.128/25"
  gateway_ip        = "10.0.4.129"
  vpc_id            = huaweicloud_vpc.default.id
  availability_zone = data.huaweicloud_availability_zones.zones.names[1]

  tags = local.common_tags
}

resource "huaweicloud_nat_gateway" "nat_1" {
  name        = "nat-gw-dev"
  description = "access internet for nodes"
  spec        = "1"
  vpc_id      = huaweicloud_vpc.default.id
  subnet_id   = huaweicloud_vpc_subnet.public_1.id
}
