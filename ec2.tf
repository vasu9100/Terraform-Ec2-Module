resource "aws_instance" "roboshop_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_id == null ? ["sg-0eab7d3878626d44d"] : var.security_group_id
  subnet_id = var.subnet_id == null ? data.aws_subnet.selected.id : var.subnet_id
  associate_public_ip_address = var.public_ip_enable
  iam_instance_profile = var.is_instance_profile_attached == true ? var.iam_instance_profile : null
  user_data = var.user_data_script_path
  tags =merge(var.common_tags,{
    Name = var.instance_name
    App = var.app
    Role = var.role
    Environment = var.environment

  })
    
}

resource "aws_route53_record" "route_roboshop" {
  count = var.is_route_required == true ? 1 : 0
  zone_id = var.zone_id
  name    = "${var.instance_name}.${var.zone_name}"
  type    = "A"
  ttl     = 1
  records = var.instance_name == "web" ? [aws_instance.roboshop_ec2.public_ip] : [aws_instance.roboshop_ec2.private_ip]
}
