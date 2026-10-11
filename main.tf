data "aws_ec2_local_gateway_virtual_interface_group" "ec2_local_gateway_virtual_interface_group_lookup" {
  for_each = var.ec2_local_gateway_virtual_interface_group_lookup

  local_gateway_id = each.value.local_gateway_id
  region           = each.value.region
  tags             = each.value.tags

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

