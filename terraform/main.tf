module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "controltower+purbasha-dev@inadev.com"
    AccountName               = "purbasha-dev"
    ManagedOrganizationalUnit = "Purbasha"
    SSOUserEmail              = "controltower+purbasha-dev@inadev.com"
    SSOUserFirstName          = "purbasha-dev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "purbasha-dev"
}
