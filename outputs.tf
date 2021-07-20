output "application_name" {
  description = "Name of the application."
  value       = join("", aws_elastic_beanstalk_environment.application_environment.*.application)
}

output "environment_name" {
  description = "Name of the environment where the application runs."
  value       = join("", aws_elastic_beanstalk_environment.application_environment.*.name)
}

output "application_cname" {
  description = "FQDN for the application."
  value       = join("", aws_route53_record.application_environment_ipv4_alias.*.fqdn)
}

output "autoscaling_groups" {
  description = "List of autoscaling groups attached to the application."
  value       = flatten(aws_elastic_beanstalk_environment.application_environment.*.autoscaling_groups)
}

output "load_balancers" {
  description = "Name of the Load balancers attached to the application."
  value       = flatten(aws_elastic_beanstalk_environment.application_environment.*.load_balancers)
}
