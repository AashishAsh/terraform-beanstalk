data "aws_elastic_beanstalk_hosted_zone" "current" {}

resource "aws_elastic_beanstalk_environment" "application_environment" {
  name                   = var.environment_name
  application            = var.application_name
  solution_stack_name    = var.solution_stack_name
  wait_for_ready_timeout = "40m"
  tags                   = var.tags

  dynamic "setting" {
    for_each = var.settings
    content {
      namespace = setting.value.namespace
      name      = setting.value.name
      value     = setting.value.value
    }
  }
}

resource "aws_route53_record" "application_environment_ipv4_alias" {
  zone_id = var.route53_zone_id
  name    = var.fqdn
  type    = "A"

  alias {
    name                   = aws_elastic_beanstalk_environment.application_environment.cname
    zone_id                = data.aws_elastic_beanstalk_hosted_zone.current.id
    evaluate_target_health = false
  }
}
