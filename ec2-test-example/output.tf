output "roboshop_mongo_pvt_ip" {
  value = module.roboshop_ec2_mongo.ec2.private_ip
}

output "roboshop_catalogue_pvt_ip" {
  value = module.roboshop_ec2_catalogue.ec2.private_ip
}

output "roboshop_user_pvt_ip" {
  value = module.roboshop_ec2_user.ec2.private_ip
}

output "roboshop_redis_pvt_ip" {
  value = module.roboshop_ec2_redis.ec2.private_ip
}

output "roboshop_cart_pvt_ip" {
  value = module.roboshop_ec2_cart.ec2.private_ip
}

output "roboshop_mysql_pvt_ip" {
  value = module.roboshop_ec2_mysql.ec2.private_ip
}

output "roboshop_shipping_pvt_ip" {
  value = module.roboshop_ec2_shipping.ec2.private_ip
}

output "roboshop_payment_pvt_ip" {
  value = module.roboshop_ec2_payment.ec2.private_ip
}

output "roboshop_rabbit_pvt_ip" {
  value = module.roboshop_ec2_rabbit.ec2.private_ip
}

output "roboshop_web_public_ip" {
  value = module.roboshop_ec2_web.ec2.public_ip
}

output "web_route_info" {
    value = module.roboshop_ec2_web.zone_info
  
}

output "web_record_info" {
    value = module.roboshop_ec2_web.records_info
  
}

