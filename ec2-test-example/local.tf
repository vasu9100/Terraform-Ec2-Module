locals {
  roboshop_vpc_id = data.aws_ssm_parameter.vpc_ssm.value
  private_subnet_id = element(split(",", data.aws_ssm_parameter.private_subnet_ssm.value), 0)
  public_subnet_id = element(split(",", data.aws_ssm_parameter.public_subnet_ssm.value), 0)
  database_subnet_id = element(split(",", data.aws_ssm_parameter.database_subnet_ssm.value), 0)
}