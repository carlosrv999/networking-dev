output "vpc_name" {
  value = huaweicloud_vpc.default.name
}

output "vpc_id" {
  value = huaweicloud_vpc.default.id
}

output "subnet_private_1_id" {
  value = huaweicloud_vpc_subnet.private_1.id
}

output "subnet_private_2_id" {
  value = huaweicloud_vpc_subnet.private_2.id
}

output "subnet_public_1_id" {
  value = huaweicloud_vpc_subnet.public_1.id
}

output "subnet_public_2_id" {
  value = huaweicloud_vpc_subnet.public_2.id
}

output "subnet_database_1_id" {
  value = huaweicloud_vpc_subnet.database_1.id
}

output "subnet_database_2_id" {
  value = huaweicloud_vpc_subnet.database_2.id
}
