Ref:- official doco
https://developer.hashicorp.com/terraform/language/style

Terraform Flow(TF Called as Terraform):
Ref:- https://github.com/shivscloud/terraform-advanced-raj
1.Install & Setup Terraform.
2.Configure AWS
3.Setup State file
4.Write simple TF manifest.
5.Terraform provider & respective blocks
6.TF Depends on
7.TF Count
8.TF Foreach
9.TF Modules
10.TF Lifecycle  
lifecyle Meta-Argument block contains 3 arguments
- create_before_destroy (Default mechanism) 1st 
- prevent_destroy (DB application)
- ignore_changes
11. data Modules
12. varibles:
   String
   list
   number
   map
   sensitive
   Tfvars priority
   prompt 

Terraform function flow:
When we run the terraform plan/apply commands it will go by default to.
providers --> filename.tfvars(1st priority) --> variable.tf(2nd priority) --> filename.tf(3rd priority)