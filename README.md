# aws-beanstalk
A terraform module for creating a tomcat beanstalk in AWS.

Default settings: (Can use default settings or can use customized settings.)

```hcl
module "temp_beanstalk_beanstalk" {
  source                = "git::ssh://git@github.comcast.com/CXE-Devops/terraform-aws-beanstalk.git?ref=2.0.0"
  application_name      = <application_name>
  environment_name      = <environment_name>
  solution_stack_name   = <solution_stack_name>
  fqdn                  = <fqdn>
  acm_certificate_arn   = <acm_certificate_arn>

  settings = [#All the settings for the Beanstalk can be configurable with settings block.
    {
      namespace = "<namespace>" #https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html
      name      = "<name>"
      value     = "<value>"
    }
  ]

 Add custom tags here
  custom_tags = "${merge(local.consolidated_default_tags, local.env_tag_map["${var.partner_env}"], local.beanstalk_name_tags)}"
}
```
