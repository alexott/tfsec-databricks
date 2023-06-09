resource "databricks_cluster" "very_high_auto_terminate" {
  cluster_name            = "Shared Autoscaling"
  spark_version           = "spark3.4.0"
  node_type_id            = "ix3"
  autotermination_minutes = 200
  autoscale {
    min_workers = 1
    max_workers = 50
  }
}

resource "databricks_cluster" "no_auto_terminate" {
  cluster_name            = "Shared Autoscaling"
  spark_version           = "spark3.4.0"
  node_type_id            = "ix3"
  autotermination_minutes = 0
  autoscale {
    min_workers = 1
    max_workers = 50
  }
}
