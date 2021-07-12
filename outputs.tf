output "application_name" {
  value = join("", aws_elastic_beanstalk_environment.application_environment.*.application)
}

output "environment_name" {
  value = join("", aws_elastic_beanstalk_environment.application_environment.*.name)
}

output "application_cname" {
  value = join("", aws_route53_record.application_environment_ipv4_alias.*.fqdn)
}
