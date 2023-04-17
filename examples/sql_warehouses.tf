resource "databricks_sql_endpoint" "t1" {
  name             = "T1"
  cluster_size     = "Small"
  max_num_clusters = 1
  auto_stop_mins   = 0
}

resource "databricks_sql_endpoint" "t2" {
  name             = "T2"
  cluster_size     = "Small"
  max_num_clusters = 1
  auto_stop_mins   = 90
}
