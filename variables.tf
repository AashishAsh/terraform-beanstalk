variable "enabled" {
  description = "A pass-through to emulate module-level count.  Set to 0 to skip the module, otherwise use the default."
  default     = "1"
}

variable "application_name" {
  description = "The name to use for the Elastic Beanstalk application managed by this module"
}

variable "environment_name" {
  description = "The name to use for the Elastic Beanstalk application environment managed by this module"
}

variable "solution_stack_name" {
  description = "The name of the solution stack to use for this Elastic Beanstalk application environment"
}

variable "fqdn" {
  description = "The domain name that clients should use to access the application environment"
}

variable "settings" {
  type = list(object({
    namespace = string
    name      = string
    value     = string
  }))

  default     = []
  description = "Elastic Beanstalk setttings. For full list of options, see https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html"
}

variable "tags" {
  default     = {}
  description = "Tags to be applied to the Elastic Beanstalk environment"
}

variable "route53_zone_id" {
  description = "The ID of the Route 53 zone in which alias records should be created"
}
