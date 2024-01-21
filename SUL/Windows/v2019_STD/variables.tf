variable "vsphere_server" {
  type        = string
  description = "The vSphere server address"
  default     = "[url do vcenter]"
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

variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "datacenter" {
  type        = string
  description = "The name of the datacenter"
}

variable "cluster" {
  type        = string
  description = "The name of the cluster"
}

variable "folder_name" {
  type        = string
  description = "The name of the folder"
}

variable "datastore" {
  type        = string
  description = "The name of the datastore"
}

variable "ipv4_address_data" {
  type        = string
  description = "The IP address of the data network"
}

variable "network_data" {
  type        = string
  description = "The name of the data network"
}

variable "prefix_data" {
  type        = number
  description = "The prefix of the data network"
}

variable "network_mgmt" {
  type        = string
  description = "The name of the management network"
}

variable "ipv4_address_mgmt" {
  type        = string
  description = "The IP address of the management network"
}

variable "prefix_mgmt" {
  type        = number
  description = "The prefix of the management network"
}

variable "network_backup" {
  type        = string
  description = "The name of the backup network"
}

variable "ipv4_address_backup" {
  type        = string
  description = "The IP address of the backup network"
}

variable "prefix_bkp" {
  type        = number
  description = "The prefix of the backup network"
}

variable "vlan_id" {
  type        = string
  description = "The VLAN ID of the network"
}

variable "cpu" {
  type        = number
  description = "The number of CPUs"
}

variable "memory" {
  type        = number
  description = "The amount of memory in MB"
}

variable "disk" {
  type        = number
  description = "The size of the disk in GB"
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
