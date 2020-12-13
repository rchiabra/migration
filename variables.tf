# variable "ibmcloud_api_key" {}
variable "ibmcloud_api_key" {
    default = ""
    description = "(Requerido)"
}
variable "environment" {
    default = "dev"
    description = "(Requerido)"
}

variable "resource_group" {
    default = "migration-baseline"
    description = "(Requerido)"
}

variable "storage_name" {
    default = "migration-storage"
    description = "Nombre de COS"
}

variable "ibmcloud_region" {
    description = "Preferred IBM Cloud region to use for your infrastructure"
    default = "us-east"
}

variable "cloudobjectstorage_plan" {
    description = "Plan for Cloud Object Storage: lite or standard"
    default="standard"
}

variable "cloudobjectstorage_location" {
    description = "Find available locations with: ibmcloud catalog service cloud-object-storage"
    default = "global"
}    
