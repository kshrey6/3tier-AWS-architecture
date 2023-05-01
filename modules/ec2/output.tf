output "mainBastionInstanceId" {
  value = aws_instance.mainBastion.id
}

# output "mainBastionIp" {
#   value = aws_instance.mainBastion.associate_public_ip_address
# }

# output "mainPrivateAIp" {
#   value = aws_instance.privateInstanceA.private_ip
# }

# output "mainPrivateBIp" {
#   value = aws_instance.privateInstanceB.private_ip
# }