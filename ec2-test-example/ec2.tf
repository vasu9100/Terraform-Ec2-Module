module "roboshop_ec2_mongo" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "Mongo"
    instance_type = "t2.small"
    subnet_id = local.database_subnet_id
    security_group_id = [data.aws_ssm_parameter.mongo_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "Mongo-db-ec2"
  
}

module "roboshop_ec2_catalogue" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "catalogue"
    instance_type = "t2.micro"
    subnet_id = local.private_subnet_id
    security_group_id = [data.aws_ssm_parameter.catalogue_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "catalogue-ec2"
  
}

module "roboshop_ec2_user" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "user"
    instance_type = "t2.micro"
    subnet_id = local.private_subnet_id
    security_group_id = [data.aws_ssm_parameter.user_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "user-ec2"
  
}

module "roboshop_ec2_redis" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "redis"
    instance_type = "t2.micro"
    subnet_id = local.database_subnet_id
    security_group_id = [data.aws_ssm_parameter.user_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "redis-ec2"
  
}

module "roboshop_ec2_cart" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "cart"
    instance_type = "t2.micro"
    subnet_id = local.private_subnet_id
    security_group_id = [data.aws_ssm_parameter.cart_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "cart-ec2"
  
}

module "roboshop_ec2_mysql" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "mysql"
    instance_type = "t2.small"
    subnet_id = local.database_subnet_id
    security_group_id = [data.aws_ssm_parameter.mysql_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "mysql-ec2"
  
}

module "roboshop_ec2_shipping" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "shipping"
    instance_type = "t2.small"
    subnet_id = local.private_subnet_id
    security_group_id = [data.aws_ssm_parameter.shipping_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "shipping-ec2"
  
}

module "roboshop_ec2_payment" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "payment"
    instance_type = "t2.micro"
    subnet_id = local.private_subnet_id
    security_group_id = [data.aws_ssm_parameter.payment_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "payment-ec2"
  
}

module "roboshop_ec2_rabbit" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "rabbit"
    instance_type = "t2.small"
    subnet_id = local.database_subnet_id
    security_group_id = [data.aws_ssm_parameter.rabbit_sg_ssm.value]
    zone_id = data.aws_route53_zone.roboshop_zone.id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "rabbit-ec2"
  
}

module "roboshop_ec2_web" {
    source = "github.com/vasu9100/Terraform-Ec2-Module.git?ref=main"
    is_route_required = true
    ami_id = data.aws_ami.devops_practice_ami.id
    instance_name = "web"
    instance_type = "t2.micro"
    subnet_id = local.database_subnet_id
    security_group_id = [data.aws_ssm_parameter.web_sg_ssm.value]
    public_ip_enable = true
    zone_id = data.aws_route53_zone.roboshop_zone.zone_id
    zone_name = data.aws_route53_zone.roboshop_zone.name

    #tags
    app = "Roboshop"
    role = "web-ec2"
  
}


