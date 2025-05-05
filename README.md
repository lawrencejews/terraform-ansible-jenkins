### Terraform-Ansible-Jenkins

#### Terraform Execution Commands
- Terraform Initialize `terraform init`
- Observation: Initialized Local Backend, Downloaded the provider plugins (initialized plugins) and Review the folder structure `.terraform folder`
- Terraform Validate `terraform validate`
- `Observation:` If any changes to files, those will come as printed in stdout (those file names will be printed in CLI)
- Terraform Plan `terraform plan` -> Observation: `No changes - Just prints the execution plan`
- Terraform Apply `terraform apply` then approve OR `terraform apply -auto-approve`
- Terraform Destroy `terraform plan destroy` then approve OR `terraform destroy -auto-approve`
- Clean-Up Files: `rm -rf .terraform*` and `rm -rf terraform.tfstate*`