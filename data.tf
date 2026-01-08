data "aws_vpc" "example" {
  id = "vpc-07eede624774fec02"
}
#creating security group
resource "aws_security_group" "allow_tls" {
  name        = "satya_allow_boa_rules"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.example.id

  tags = {
    Name = "satya_allow_boa_rules"
  }
}