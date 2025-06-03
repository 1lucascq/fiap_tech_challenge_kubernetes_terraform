resource "aws_security_group" "sg" {
  name        = "SG-tc-fiap"
  description = "Usado no EKS para o TC fase 3"
  vpc_id      = "vpc-092b225a2e861b0ce"

  # Inbound
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound
  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

import {
    to = aws_security_group.sg
    id = "sg-06776178eaae9199c"
}
