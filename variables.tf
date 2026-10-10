variable "client_grant_organizations_lookup" {
  description = <<EOT
Map of client_grant_organizations_lookup, attributes below
Required:
    - client_grant_id
EOT

  type = map(object({
    client_grant_id = string
  }))
}

