resource "aws_security_group" "acesso-tcp-us-east-2" {
  provider = aws
  name        = "acesso-tcp"
  description = "acesso-tcp"

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"

    cidr_blocks = ["45.184.70.202/32"]
  }
  tags = {
    Name = "tcp"
  }
}
