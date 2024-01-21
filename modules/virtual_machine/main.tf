# This block of code is used to input the variables that will be used in the module, in this case the datacenter.
data "vsphere_datacenter" "datacenter" {
  name = var.data_center
}

# The following block of code is used to input the variables that will be used in the module, in this case the datastore.
# The datacenter_id is used to identify the datacenter where the datastore is located.
data "vsphere_datastore" "datastore" {
  name          = var.data_store
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# The following block of code is used to input the variables that will be used in the module, in this case the resource pool.
# The datacenter_id is used to identify the datacenter where the resource pool is located.
data "vsphere_resource_pool" "pool" {
  name          = "${var.resource_pool}/Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# The following block of code is used to input the variables that will be used in the module, in this case the network.
# The datacenter_id is used to identify the datacenter where the network is located.
data "vsphere_network" "networking_data" {
  name          = var.data_lan
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "networking_mgmt" {
  name          = var.mgmt_lan
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "networking_backup" {
  name          = var.backup_lan
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

# The following block of code is used to input the variables that will be used in the module, in this case the content library.
# The datacenter_id is used to identify the datacenter where the content library is located.
data "vsphere_content_library" "content_libraries" {
  name = var.content_libraries
}

# The following block of code is used to input the variables that will be used in the module, in this case the content library item.
# The library_id is used to identify the content library where the content library item is located.
# The name is used to identify the template.
data "vsphere_content_library_item" "content_libraries_item" {
  name       = var.content_libraries_ovf
  type       = "vm-template"
  library_id = data.vsphere_content_library.content_libraries.id
}

# The following block of code is used to input the variables that will be used in the module, in this case the template.
# The datacenter_id is used to identify the datacenter where the template is located.
# The name is used to identify the template.
# data "vsphere_virtual_machine" "new_template" {
#   name = var.environment == "SUL" ? "GEB-VMFOLDER-TEMPLATES/LINUX/TEMPLATE_RedHat_8.8" : "GEU-VMFOLDER-TEMPLATES/LINUX/TEMPLATE_RedHat_8.8"
#   datacenter_id = var.environment == "SUL" ? "datacenter-1001" : "datacenter-3"
# }

# The following block of code is used to input the variables that will be used in the module, in this case the template.
# The datacenter_id is used to identify the datacenter where the template is located.
data "template_file" "metadata" {
  # template = var.scsi_type == "pvscsi" ? file("${path.module}/templates/linux/network/static_ip.yaml") : file("${path.module}/templates/windows/network/static_ip.yaml")
  # It's a condition to insert the template file in the virtual machine module, if the scsi_type is pvscsi, the template file will be inserted, if not, the template file will not be inserted.
  template = var.scsi_type == "pvscsi" ? file("${path.module}/templates/linux/network/static_ip.yaml") : false

  vars = {
    name_vm             = var.name_vm
    ipv4_address_data   = var.ipv4_address_data
    ipv4_netmask_data   = var.ipv4_netmask_data
    ipv4_address_mgmt   = var.ipv4_address_mgmt
    ipv4_netmask_mgmt   = var.ipv4_netmask_mgmt
    ipv4_address_backup = var.ipv4_address_backup
    ipv4_netmask_backup = var.ipv4_netmask_backup
  }
}

# The following block of code is used to input the variables that will be used in the module, in this case the template.
# The datacenter_id is used to identify the datacenter where the template is located.
data "template_file" "userdata" {
  # The condition is valid for the template file to be inserted in the virtual machine module, if the scsi_type is pvscsi, the template file will be inserted, if not, the template file will not be inserted.
  template = var.scsi_type == "pvscsi" ? file("${path.module}/templates/linux/network/${var.vlan_id}.yaml") : file("${path.module}/templates/windows/network/${var.vlan_id}.ps1")
}

# The following blocks of code is used to input the tags that will be used in the virtual machine.
data "vsphere_custom_attribute" "tag-adm" {
  name = var.environment == "SUL" ? "ADM SERVIDOR" : "ADM Servidor"
}

data "vsphere_custom_attribute" "tag-cluster" {
  name = var.environment == "SUL" ? "CLUSTER" : "Cluster"
}

data "vsphere_custom_attribute" "tag-cambio" {
  name = var.environment == "SUL" ? "Cambio/RF" : "Número del cambio de creación"
}

data "vsphere_custom_attribute" "tag-data" {
  name = var.environment == "SUL" ? "Data Criação" : "Date of Birth"
}

data "vsphere_custom_attribute" "tag-datastore" {
  name = "Datastore"
}

data "vsphere_custom_attribute" "tag-ip-backup" {
  name = "IP Backup"
}

data "vsphere_custom_attribute" "tag-ip-data" {
  name = var.environment == "SUL" ? "IP Dados" : "IP Producao:"
}

data "vsphere_custom_attribute" "tag-ip-mgmt" {
  name = var.environment == "SUL" ? "IP Gerencia" : "IP Management"
}

data "vsphere_custom_attribute" "tag-owner" {
  name = var.environment == "SUL" ? "OWNER" : "Equipe Resp. S.O"
}

resource "vsphere_virtual_machine" "virtualmachine" {
  name                       = var.name_vm
  resource_pool_id           = data.vsphere_resource_pool.pool.id
  datastore_id               = data.vsphere_datastore.datastore.id
  force_power_off            = true
  shutdown_wait_timeout      = 1
  num_cpus                   = var.num_cpus
  memory                     = var.num_mem * 1024
  num_cores_per_socket       = 2
  cpu_hot_add_enabled        = true
  cpu_hot_remove_enabled     = true
  memory_hot_add_enabled     = true
  wait_for_guest_net_timeout = 0
  firmware                   = var.firmware
  guest_id                   = var.guest_id
  nested_hv_enabled          = true
  folder                     = var.folder_name
  scsi_type                  = var.scsi_type
  tools_upgrade_policy       = "upgradeAtPowerCycle"

#  dynamic "cdrom" {
#    for_each = var.scsi_type == "lsilogic-sas" ? [1] : []
#    content {
#    }
#  }

  disk {
    size             = var.disk_size
    label            = var.disk_label
    eagerly_scrub    = false
    thin_provisioned = var.disk_type
  }

  # dynamic "disk" {
  #   for_each = var.additional_disk == "yes" ? [1] : []
  #   content {
  #     size             = var.additional_disk_size
  #     label            = var.additional_disk_label
  #     eagerly_scrub    = false
  #     thin_provisioned = var.additional_disk_type
  #   }
  # }

  network_interface {
    network_id   = data.vsphere_network.networking_data.id
    adapter_type = var.net_adapter_type
  }

  network_interface {
    network_id   = data.vsphere_network.networking_mgmt.id
    adapter_type = var.net_adapter_type
  }

  network_interface {
    network_id   = data.vsphere_network.networking_backup.id
    adapter_type = var.net_adapter_type
  }

  clone {
    # template_uuid = var.scsi_type == "pvscsi" ? data.vsphere_virtual_machine.new_template.id : data.vsphere_content_library_item.content_libraries_item.id
    template_uuid = data.vsphere_content_library_item.content_libraries_item.id
    timeout = 60
    dynamic "customize" {
      for_each = var.scsi_type == "lsilogic-sas" ? [1] : []
      content {
        windows_options {
          computer_name    = var.name_vm
          admin_password   = "Admin@123"
          workgroup        = "WORKGROUP"
          auto_logon       = true
          auto_logon_count = 1
          run_once_command_list = [
            "powershell \"cd \"$env:ProgramFiles\\VMware\\VMware~1\";[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($(.\\rpctool.exe \\\"info-get guestinfo.userdata\\\")))|out-file C:\\bootstrap.ps1\"",
            "cmd.exe /C Powershell.exe -ExecutionPolicy Bypass -File C:\\bootstrap.ps1"
          ]
        }

        network_interface {
          ipv4_address = var.ipv4_address_data
          ipv4_netmask = var.ipv4_netmask_data
        }

        network_interface {
          ipv4_address = var.ipv4_address_mgmt
          ipv4_netmask = var.ipv4_netmask_mgmt
        }

        network_interface {
          ipv4_address = var.ipv4_address_backup
          ipv4_netmask = var.ipv4_netmask_backup
        }
      }
    }
  }

  custom_attributes = {
    (data.vsphere_custom_attribute.tag-adm.id)       = var.tag_adm
    (data.vsphere_custom_attribute.tag-cluster.id)   = var.tag_cluster
    (data.vsphere_custom_attribute.tag-cambio.id)    = var.tag_cambio
    (data.vsphere_custom_attribute.tag-data.id)      = var.tag_data
    (data.vsphere_custom_attribute.tag-datastore.id) = var.tag_datastore
    (data.vsphere_custom_attribute.tag-ip-backup.id) = var.tag_ip_backup
    (data.vsphere_custom_attribute.tag-ip-data.id)   = var.tag_ip_data
    (data.vsphere_custom_attribute.tag-ip-mgmt.id)   = var.tag_ip_mgmt
    (data.vsphere_custom_attribute.tag-owner.id)     = var.tag_owner
  }

  annotation = var.annotation

  extra_config = {
    "guestinfo.userdata"          = base64encode(data.template_file.userdata.rendered)
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = base64encode(data.template_file.metadata.rendered)
    "guestinfo.metadata.encoding" = "base64"
  }

}
