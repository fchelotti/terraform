variable "vsphere_server" {
  type        = string
  description = "The vSphere server address"
}

variable "user" {
  description = "The user to use for the connection"
  type        = string
}

variable "password" {
  description = "The password to use for the connection"
  type        = string
  sensitive   = true
}

variable "content_libraries_ovf" {
  description = "The name of the custom content library to use for the template"
  type        = string
  default = "Template_Windows_2019_DC_JAN_2023"
}

variable "content_libraries" {
  description = "The name of the content library to use for the template"
  type        = string
  default = "PROJETO"
}

variable "data_center" {
  type        = string
  description = "The name of the data center"
}

variable "resource_pool" {
  type        = string
  description = "The name of the resource pool"
}

variable "data_store" {
  type        = string
  description = "The name of the data store"
}

variable "firmware" {
  type        = string
  description = "The firmware type"
}

variable "data_lan" {
  type        = string
  description = "The name of the data lan"
}

variable "ipv4_address_data" {
  type        = string
  description = "The IPv4 address of the data lan"
}

variable "ipv4_netmask_data" {
  type        = number
  description = "The IPv4 netmask of the data lan"
}

variable "mgmt_lan" {
  type        = string
  description = "The name of the management lan"
}

variable "ipv4_address_mgmt" {
  type        = string
  description = "The IPv4 address of the management lan"
}

variable "ipv4_netmask_mgmt" {
  type        = number
  description = "The IPv4 netmask of the management lan"
}

variable "backup_lan" {
  type        = string
  description = "The name of the backup lan"
}

variable "ipv4_address_backup" {
  type        = string
  description = "The IPv4 address of the backup lan"
}

variable "ipv4_netmask_backup" {
  type        = number
  description = "The IPv4 netmask of the backup lan"
}

variable "net_adapter_type" {
  type        = string
  description = "The type of the network adapter"
  default     = "vmxnet3"
}

variable "guest_id" {
  type        = string
  description = "The guest id of the virtual machine"
}

variable "name_vm" {
  type        = string
  description = "Input a name for Virtual Machine Ex. new_vm"
}

variable "folder_name" {
  type        = string
  description = "Input a name for Virtual Machine Ex. new_vm"
}

variable "scsi_type" {
  type        = string
  description = "ype of SCSI bus this virtual machine will have. Can be one of lsilogic (LSI Logic Parallel), lsilogic-sas (LSI Logic SAS) or pvscsi (VMware Paravirtual)."
}

variable "disk_type" {
  type        = bool
  description = "Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50"
}

variable "disk_size" {
  type        = number
  description = "Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50"
}

variable "num_cpus" {
  type        = number
  description = "Amount of vCPU’s, Ex. 2"
}

variable "num_mem" {
  type        = number
  description = "Amount of Memory, Ex. 1024, 2048, 3073, 4096"
}

variable "disk_label" {
  type        = string
  description = "Label of the disk"
}

variable "vlan_id" {
  type        = string
  description = "The VLAN ID of the network"
}

variable "tag_adm" {
  type        = string
  description = "The tag of the adm"
}

variable "tag_cluster" {
  type        = string
  description = "The tag of the cluster"
}

variable "tag_cambio" {
  type        = string
  description = "The tag of the cambio"
}

variable "tag_data" {
  type        = string
  description = "The tag of the data"
}

variable "tag_datastore" {
  type        = string
  description = "The tag of the datastore"
}

variable "tag_ip_backup" {
  type        = string
  description = "The tag of the ip backup"
}

variable "tag_ip_data" {
  type        = string
  description = "The tag of the ip data"
}

variable "tag_ip_mgmt" {
  type        = string
  description = "The tag of the ip mgmt"
}

variable "tag_owner" {
  type        = string
  description = "The tag of the owner"
}

variable "annotation" {
  type        = string
  description = "The annotation of the virtual machine"
}

variable "environment" {
  type        = string
  description = "The environment of the virtual machine SUL/NORTH"
}
