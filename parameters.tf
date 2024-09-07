resource "aws_ssm_parameter" "lb_main_arn" {
  name  = format("/%s/ecs/lb_arn", var.project_name)
  type  = "String"
  value = aws_lb.lb_main.arn
}

resource "aws_ssm_parameter" "lb_main_listener" {
  name  = format("/%s/ecs/lb_listener", var.project_name)
  type  = "String"
  value = aws_lb_listener.listener_main.arn
}
