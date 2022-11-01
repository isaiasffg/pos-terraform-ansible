resource "aws_security_group" "acesso-tcp" {
  provider = aws
  name        = "acesso-tcp"
  description = "acesso-tcp"

ingress {
    description      = "RDP Access"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "WinRM Access"
    from_port        = 5986
    to_port          = 5986
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }
  tags = {
    Name = "tcp"
  }
}
