output "ec2" {
  value = aws_instance.roboshop_ec2
}

output "zone_info" {
  value = aws_route53_record.route_roboshop[*].name
  
}

output "records_info" {
  value = aws_route53_record.route_roboshop[*].records
  
}

output "zone_id" {
  value = aws_route53_record.route_roboshop[*].id
  
}
