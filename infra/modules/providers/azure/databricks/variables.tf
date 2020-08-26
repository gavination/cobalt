# *************************************************************************
# Azure DataBricks Configuration
# *************************************************************************

variable "databricks_host" {
    type        = string
    description = "the hostname of the existing databricks instance"
    default     = "https://adb-2163700494009466.6.azuredatabricks.net"
}

variable "databricks_token" {
    type        = string
    description = "the token for the databricks instance"
    default     = "dapi271c6bcf97b946f3fbf689acf97daa58"
}

variable "workspace_path" {
    type        = string
    description = "the destination path for the jar files"
    default     = "/terraformdeployments"
}

variable "jar_path" {
    type        = string
    description = "the local path to the jar file"
    default     = "/"
}

variable "jar_name" {
    type        = string
    description = "the name of the generated jar file"
    default     = "MDSScala-assembly-20200812.6.jar"
}

variable "remote_jar_path" {
    type        = string
    description = "the path of the JAR in the Databricks workspace"
    default     = "dbfs:/terraformdeployments"
}

variable "main_jar_class" {
    type        = string
    description = "the main class of the jar file"
    default     = " InStockProcessing.SeedProcess"
}

variable "cluster_id" {
    type        = string
    description = "the id of the Databricks cluster"
    default     = "0717-203400-skews710"
}

variable "job_name" {
    type        = string
    description = "the version of the deployed jar file"\
    default     = "default-job"
}

variable "project_version" {
    type        = string
    description = "the version of the deployed jar file"
    default     = "001" 
}