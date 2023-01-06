output "bastionPublicSubnet" {
  value = aws_subnet.bastionPublicA.id
}

# output "privateSubnetA" {
#   value = [for sidA in aws_subnet.privateSubnetA: sidA.id]
# }

# output "privateSubnetB" {
#   value = [for sidB in aws_subnet.privateSubnetB: sidB.id]
# }

# output "privateSubnetA" {
#   value = aws_subnet.privateSubnetA.*.id
# }

# output "privateSubnetB" {
#   value = aws_subnet.privateSubnetB[*].id
# }

output "privateSubnetA" {
  value = "${formatlist("%v",aws_subnet.privateSubnetA.*.id)}"
}


output "privateSubnetB" {
  value = "${formatlist("%v", aws_subnet.privateSubnetB.*.id)}"
}

output "mainPublicA" {
  value = aws_subnet.mainPublicA.id
}