data "aws_ssm_parameter" "vpc_ssm" {
  name = "/Roboshop/dev/vpc_id"
  
}

data "aws_ssm_parameter" "public_subnet_ssm" {
  name = "/Roboshop/dev/public_subnet_id"
  
}

data "aws_ssm_parameter" "private_subnet_ssm" {
  name = "/Roboshop/dev/private_subnet_id"
  
}

data "aws_ssm_parameter" "database_subnet_ssm" {
  name = "/Roboshop/dev/database_subnet_id"
  
}

data "aws_ssm_parameter" "mongo_sg_ssm" {
  name = "/Roboshop/dev/mongo_id"
  
}

data "aws_ssm_parameter" "catalogue_sg_ssm" {
  name = "/Roboshop/dev/catalogue_id"
  
}

data "aws_ssm_parameter" "user_sg_ssm" {
  name = "/Roboshop/dev/user_id"
  
}

data "aws_ssm_parameter" "cart_sg_ssm" {
  name = "/Roboshop/dev/cart_id"
  
}
data "aws_ssm_parameter" "redis_sg_ssm" {
  name = "/Roboshop/dev/redis_id"
  
}
data "aws_ssm_parameter" "mysql_sg_ssm" {
  name = "/Roboshop/dev/mysql_id"
  
}
data "aws_ssm_parameter" "shipping_sg_ssm" {
  name = "/Roboshop/dev/shipping_id"
  
}
data "aws_ssm_parameter" "rabbit_sg_ssm" {
  name = "/Roboshop/dev/rabbit_id"
  
}
data "aws_ssm_parameter" "web_sg_ssm" {
  name = "/Roboshop/dev/web_id"
  
}

data "aws_ssm_parameter" "payment_sg_ssm" {
  name = "/Roboshop/dev/payment_id"
  
}

data "aws_ssm_parameter" "vpn_sg_ssm" {
  name = "/Roboshop/dev/vpn_id"
  
}


data "aws_ami" "devops_practice_ami" {
  
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_route53_zone" "roboshop_zone" {
  name         = "gonepudirobot.online"
  private_zone = false
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default_subnet" {
  vpc_id = data.aws_vpc.default.id
  availability_zone  = "us-east-1a"
}







