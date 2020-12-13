#######################################
# Resource group
#######################################

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

#######################################
# Create services in the resource group
#######################################

# a cloud object storage
resource "ibm_resource_instance" "cos" {
  name              = var.storage_name
  resource_group_id = data.ibm_resource_group.resource_group.id
  service           = "cloud-object-storage"
  plan              = var.cloudobjectstorage_plan
  location          = var.cloudobjectstorage_location

}

resource "ibm_cos_bucket" "bucket" {
  bucket_name          = "${var.storage_name}-${var.environment}"
  resource_instance_id = ibm_resource_instance.cos.id
  single_site_location = var.ibmcloud_region
  storage_class        = "standard"
}