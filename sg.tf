resource "aws_security_group" "sg_vpc_main" {
  name   = format("%s-vpc-main", var.project_name)
  vpc_id = data.aws_ssm_parameter.vpc.value

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

resource "aws_security_group_rule" "subnet_ranges" {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  type              = "ingress"
  description       = "Allow trafic to VPC"
  security_group_id = aws_security_group.sg_vpc_main.id
  cidr_blocks = [
    "10.0.0.0/16"
  ]
}
