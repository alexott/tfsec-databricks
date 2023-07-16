# tfsec custom checks for Databricks-related resources

This repository has a number of the [tfsec](https://github.com/aquasecurity/tfsec) checks (security, costs tracking & optimization, ...) for Databricks-related resources:
- [Azure Databricks resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) in the `azurerm` provider.
- Different resources of [Databricks Terraform provider](https://registry.terraform.io/providers/databricks/databricks/latest/docs) - clusters, SQL warehouses, jobs, ...


## Usage

1. Install `tfsec` as described in the [documentation](https://aquasecurity.github.io/tfsec/latest/guides/installation/). 
1. Clone this repository.
1. Switch to the folder with your Terraform code & execute following command:

```sh
tfsec --custom-check-dir "<tfsec-databricks-directory>" .
```

You can always see `tfsec-databricks` in action by running it on the provided examples:

1. Switch into `examples` directory of the cloned repository.
1. Run following command:

```sh
tfsec --custom-check-dir $(pwd)/.. .
```


## Future work

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
