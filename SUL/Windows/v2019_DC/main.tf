module "vm_windows2019_dc" {
  source                = "../../../modules/virtual_machine"
  content_libraries     = "PROJETO"
  content_libraries_ovf = "TEMPLATE_Windows_2019_DC_JAN_2023"
  guest_id              = "windows2019srv_64Guest"
  firmware              = "bios"
  vsphere_server        = var.vsphere_server
  user                  = var.user
  password              = var.password
  name_vm               = var.vm_name
  num_cpus              = var.cpu
  num_mem               = var.memory
  disk_size             = var.disk
  disk_type             = false
  data_center           = var.datacenter
  resource_pool         = var.cluster
  folder_name           = var.folder_name
  scsi_type             = "lsilogic-sas"
  disk_label            = "small-disk.vmdk"
  data_store            = var.datastore
  data_lan              = var.network_data
  ipv4_address_data     = var.ipv4_address_data
  ipv4_netmask_data     = var.prefix_data
  mgmt_lan              = var.network_mgmt
  ipv4_address_mgmt     = var.ipv4_address_mgmt
  ipv4_netmask_mgmt     = var.prefix_mgmt
  backup_lan            = var.network_backup
  ipv4_address_backup   = var.ipv4_address_backup
  ipv4_netmask_backup   = var.prefix_bkp
  vlan_id               = var.vlan_id
  tag_adm               = var.tag_adm
  tag_cluster           = var.tag_cluster
  tag_cambio            = var.tag_cambio
  tag_data              = var.tag_data
  tag_datastore         = var.tag_datastore
  tag_ip_backup         = var.tag_ip_backup
  tag_ip_data           = var.tag_ip_data
  tag_ip_mgmt           = var.tag_ip_mgmt
  tag_owner             = var.tag_owner
  annotation            = var.annotation
  environment           = "SUL"
}
