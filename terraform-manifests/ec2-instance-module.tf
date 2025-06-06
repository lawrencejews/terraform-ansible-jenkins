# AWS EC2 Instance Terraform Module
# EC2 Instances that will be created in VPC Private Subnets
module "ec2_private" {
  depends_on = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"
  # insert the 10 required variables here
  name                   = "${var.environment}-vm"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")
  
# resource "null" "grafana install"{
#   depends_on = [aws_instance.main]
#   provisioner "local-exec"{
#     command = "ansible-playbook -i aws_hosts --key-file KEY_LOCATION playbooks/grafana.yml "
#   }
#   }


# Changes as of Module version UPGRADE from 2.17.0 to 5.5.0
  vpc_security_group_ids = [module.private_sg.security_group_id]
  for_each = toset(["0", "1"])
  subnet_id =  element(module.vpc.private_subnets, tonumber(each.key))
}