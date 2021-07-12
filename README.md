## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elastic_beanstalk_environment.application_environment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elastic_beanstalk_environment) | resource |
| [aws_route53_record.application_environment_ipv4_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_elastic_beanstalk_hosted_zone.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/elastic_beanstalk_hosted_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_certificate_arn"></a> [acm\_certificate\_arn](#input\_acm\_certificate\_arn) | The ARN of the certificate to use for HTTPS termination | `any` | n/a | yes |
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | The name to use for the Elastic Beanstalk application managed by this module | `any` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `string` | `"1"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | The name to use for the Elastic Beanstalk application environment managed by this module | `any` | n/a | yes |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | The domain name that clients should use to access the application environment | `any` | n/a | yes |
| <a name="input_route53_zone_id"></a> [route53\_zone\_id](#input\_route53\_zone\_id) | The ID of the Route 53 zone in which alias records should be created | `any` | n/a | yes |
| <a name="input_settings"></a> [settings](#input\_settings) | Elastic Beanstalk setttings. For full list of options, see https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html | <pre>list(object({<br>    namespace = string<br>    name      = string<br>    value     = string<br>  }))</pre> | `[]` | no |
| <a name="input_solution_stack_name"></a> [solution\_stack\_name](#input\_solution\_stack\_name) | The name of the solution stack to use for this Elastic Beanstalk application environment | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the Elastic Beanstalk environment | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_cname"></a> [application\_cname](#output\_application\_cname) | n/a |
| <a name="output_application_name"></a> [application\_name](#output\_application\_name) | n/a |
