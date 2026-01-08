resource "aws_instance" "example" {
  ami           = var.satya-ami
  instance_type = var.vm-size
  count = var.novm
#attacing security group
vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  tags = {
    Name = "${var.vm-name}-${count.index}"
  }
}