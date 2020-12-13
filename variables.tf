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
    description = "Nombre de bucket"
}

/*
variable "function_namespace" {
    default = "devops_prod"
    description = "Nombre del namespace para los paquetes"
}
variable "function_package_name" {
    default = "devops"
    description = "Nombre del paquete que contendra las funciones"
}
variable "database_name" {
    default = "psql-expand2020-001"
    description = "Nombre de la Base de Datos"
}
variable "database_passwordadmin" {
    default = "saRzT2XXK9nxf"
    description = "Ingresar contraseña de administrador"
}*/