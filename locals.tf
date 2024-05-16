locals {
  resource_name = "${var.project_names}-${var.environment}"
}
locals {
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}
