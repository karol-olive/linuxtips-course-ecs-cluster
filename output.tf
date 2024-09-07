output "load_balancer_dns" {
  value = aws_lb.lb_main.dns_name
}

output "lb_ssm_arn" {
  value = aws_ssm_parameter.lb_main_arn.id
}

output "lb_ssm_listener" {
  value = aws_ssm_parameter.lb_main_listener.id
}
