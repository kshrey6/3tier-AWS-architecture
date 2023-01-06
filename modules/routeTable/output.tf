output "bastionRtId" {
  value = aws_route_table.bastionRt.id
}

output "mainPublicRtId" {
  value = aws_route_table.mainPublicRt.id
}

output "mainPrivateRtId" {
  value = aws_route_table.mainPrivateRt.id
}