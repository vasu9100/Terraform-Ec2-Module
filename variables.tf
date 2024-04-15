variable "instance_type" {
    type = string
    default = "t2.micro"
  
}



variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
  
}

variable "common_tags" {
    type = map(string)
    default = {
      "Terraform" = "True"
      "BusinessUnit" = "E-kart-Business"
      "Owner" = "Srinivas_Gonepudi"

    }
  
}

variable "role" {
    type = string
    default = "Roboshop_ec2"
  
}

variable "app" {
  type = string
  default = "Roboshop"
}

variable "instance_name" {
    type    = string
    default = null
}


variable "environment" {
    type = string
    default = "dev"
  
}

variable "subnet_id" {
    type = string
    default = null
  
}

variable "vpc_id" {
    type = string
    default = "null"
  
}

variable "security_group_id" {
    type = list
    default = []
  
}

variable "public_ip_enable" {
    type = bool
    default = false
  
}

variable "zone_id" {
    type = string
    default = "Z08382393NBPVIFQUJM1I"
  
}

variable "is_route_required" {
    type = bool
    default = false
  
}

variable "zone_name" {
    type = string
    default = "gonepudirobot.online"
  
}


variable "user_data_script_path" {
  description = "The path to the user data script"
  type = string
  default = null

}



