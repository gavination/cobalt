# *************************************************************************
# Azure DataBricks Configuration
# *************************************************************************

variable "databricks_host" {
    type        = string
    description = "the hostname of the existing databricks instance"
}

variable "databricks_token" {
    type        = string
    description = "the token for the databricks instance"
}

variable "workspace_path" {
    type        = string
    description = "the destination path for the jar files"
}

variable "jar_path" {
    type        = string
    description = "the local path to the jar file"
}

variable "jar_name" {
    type        = string
    description = "the name of the generated jar file"
}

variable "remote_jar_path" {
    type        = string
    description = "the path of the JAR in the Databricks workspace"
}

variable "cluster_id" {
    type        = string
    description = "the id of the Databricks cluster"
}

variable "project_version" {
    type        = string
    description = "the version of the deployed jar file"
}