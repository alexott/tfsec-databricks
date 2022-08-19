# tfsec custom checks for Databricks-related resources

This repository has a number of the checks for Databricks-related resources:
- [Azure Databricks resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) in the `azurerm` provider



## Feature work

### check that we have AWS VPC endpoints for s3, sts, kinesis-streams

[doc](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_vpc_endpoint)

```hcl
resource "aws_vpc_endpoint" "s3" {
  vpc_id          = module.vpc.vpc_id
  route_table_ids = module.vpc.private_route_table_ids
  service_name    = "com.amazonaws.${var.region}.s3"
  depends_on      = [module.vpc]
}
```
