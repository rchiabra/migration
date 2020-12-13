#######################################
# Create the resource group
#######################################
resource "ibm_resource_group" "group" {
  name     = var.environment_name
}

#######################################
# Create services in the resource group
#######################################

# a cloud object storage
resource "ibm_resource_instance" "objectstorage" {
    name              = "blueprint_objectstorage"
    service           = "cloud-object-storage"
    plan              = var.cloudobjectstorage_plan
    location          = var.cloudobjectstorage_location
    resource_group_id = ibm_resource_group.group.id
}