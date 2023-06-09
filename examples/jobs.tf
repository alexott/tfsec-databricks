resource "databricks_job" "multitask" {
  name = "Job with multiple tasks on existing cluster"

  task {
    task_key = "a"

    existing_cluster_id = databricks_cluster.very_high_auto_terminate.id

    spark_jar_task {
      main_class_name = "com.acme.data.Main"
    }
  }
}

resource "databricks_job" "singletask" {
  name = "Job with single task on existing cluster"

  existing_cluster_id = databricks_cluster.very_high_auto_terminate.id

  notebook_task {
    notebook_path = "/Shared/test"
  }
}
