locals {
  instance_name = var.instance_name
  subnet_id = data.aws_subnet.selected.id

}