Ref:- official doco
https://developer.hashicorp.com/terraform/language/style

Terraform function flow:
When we run the terraform plan/apply commands it will go by default to.
providers --> filename.tfvars(1st priority) --> variable.tf(2nd priority) --> filename.tf(3rd priority)