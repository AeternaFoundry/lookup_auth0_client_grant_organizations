data "auth0_client_grant_organizations" "client_grant_organizations_lookup" {
  for_each = var.client_grant_organizations_lookup

  client_grant_id = each.value.client_grant_id
}

