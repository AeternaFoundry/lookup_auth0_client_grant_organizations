output "client_grant_organizations_lookup_id" {
  description = "Map of id values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.id }
}
output "client_grant_organizations_lookup_client_grant_id" {
  description = "Map of client_grant_id values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.client_grant_id }
}
output "client_grant_organizations_lookup_organizations" {
  description = "Map of organizations values across all client_grant_organizations_lookup, keyed the same as var.client_grant_organizations_lookup"
  value       = { for k, v in data.auth0_client_grant_organizations.client_grant_organizations_lookup : k => v.organizations }
}

