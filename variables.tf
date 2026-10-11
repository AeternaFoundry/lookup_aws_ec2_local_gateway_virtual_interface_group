variable "ec2_local_gateway_virtual_interface_group_lookup" {
  description = <<EOT
Map of ec2_local_gateway_virtual_interface_group_lookup, attributes below
Optional:
    - local_gateway_id
    - region
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    local_gateway_id = optional(string)
    region           = optional(string)
    tags             = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

