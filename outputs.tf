output "client_grant_organizations_lookup_id" {
  description = "Map of id values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "client_grant_organizations_lookup_client_grant_id" {
  description = "Map of client_grant_id values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup except keys with no client_grant_id are omitted"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.client_grant_id if v.client_grant_id != null && length(v.client_grant_id) > 0 }
}
output "client_grant_organizations_lookup_organizations" {
  description = "Map of organizations values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup except keys with no organizations are omitted"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.organizations if v.organizations != null && length(v.organizations) > 0 }
}

