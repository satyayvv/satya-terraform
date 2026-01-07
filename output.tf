output "satya-vm-publicIP" {
  value = aws_instance.example.public_ip
}

output "satya-vm-id" {
  value = aws_instance.example.id
}