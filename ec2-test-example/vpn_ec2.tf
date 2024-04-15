module "roboshop_ec2_vpn" {
    source = "../ec2-module"
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "vpn"
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.default_subnet.id
    security_group_id = [data.aws_ssm_parameter.vpn_sg_ssm.value]
    public_ip_enable = true
    user_data_script_path = file("open_vpn.sh")

    #tags
    app = "Roboshop"
    role = "web-ec2"
  
}

module "vpn" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops_practice_ami.id
  name                   = "vpn-out"
  instance_type          = "t3.small"
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_ssm.value]
  subnet_id              = data.aws_subnet.default_subnet.id
  user_data = file("open_vpn.sh")
}
