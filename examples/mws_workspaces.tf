resource "databricks_mws_workspaces" "this" {
  account_id     = "1234"
  workspace_name = "test"
  aws_region     = "us-east-1"

  credentials_id           = "1234"
  storage_configuration_id = "1234"
}
