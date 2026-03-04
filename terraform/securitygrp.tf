resource "aws_security_group" "web01-sg" {
  name        = "web01-sg"
  description = "Security group for web01 instance"

  tags = {
    name = "web01-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allowtcp" {
  security_group_id = aws_security_group.web01-sg.id
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "allowssh" {
  security_group_id = aws_security_group.web01-sg.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "allowalloutbound_ipv4" {
  security_group_id = aws_security_group.web01-sg.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "allowalloutbound_ipv6" {
  security_group_id = aws_security_group.web01-sg.id
  ip_protocol       = "-1"
  cidr_ipv6         = "::/0"
}
