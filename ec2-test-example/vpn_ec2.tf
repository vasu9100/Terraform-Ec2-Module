module "roboshop_ec2_vpn" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
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
