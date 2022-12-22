output "mainIgwId" {
  value = aws_internet_gateway.mainIgw.id
}

output "bastionIgwId" {
  value = aws_internet_gateway.bastoionIgw.id
}