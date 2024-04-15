locals {
  instance_name = "${var.app}-${var.environment}-${var.instance_name}"
  subnet_id = data.aws_subnet.selected.id

}