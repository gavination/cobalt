provider "databricks" {
  host = var.databricks_host
  token = var.databricks_token
}

# imports an existing jar file to databricks 
resource "databricks_dbfs_file" "deployment_jar" {
  source = pathexpand(var.jar_path)
  content_b64_md5 = md5(filebase64(pathexpand(var.jar_path)))
  path = join("/", [var.workspace_path, var.jar_name])
  overwrite = true
  mkdirs = true
  validate_remote_file = true
}

#creates seed job
resource "databricks_job" "seed_job" {
  existing_cluster_id = var.cluster_id
  name = join("-", ["seed-process", var.project_version])
  library_jar = toset([var.remote_jar_path])
  jar_main_class_name = "InStockProcessing.SeedProcess"
  timeout_seconds = 3600
  max_retries = 1
  max_concurrent_runs = 1
}
