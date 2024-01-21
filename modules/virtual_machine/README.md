# Terraform module to create a virtual machine in VMware vSphere

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | 2.2.0 |
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Required variables
	 password  = 
	 user  = 
	 vsphere_server  = 

	 # Optional variables
	 backup_lan  = "CMB-DMZ-BACKUP-3081"
	 content_libraries  = "LINUX"
	 custom_content_libraries  = "TEMPLATE_RedHat_8.4"
	 custom_iso_path  = "ISO/Linux/RedHat_8.6/rhel-8.6-x86_64-dvd.iso"
	 data_center  = "COMUN-BR"
	 data_lan  = "CMB-DMZ-DATA-3061"
	 data_store  = "CMB-DS-DMZ-TY-3141-7E25"
	 data_store_iso  = "GEB-DS-ISO-NODMZ-TN-3215-D117"
	 disk_label  = "first-disk.vmdk"
	 disk_size  = 60
	 firmware  = "efi"
	 folder_name  = "CMB-VMFOLDER-DMZ-LINUX-PRUEBAS"
	 guest_id  = "rhel8_64Guest"
	 ipv4_address_backup  = ""
	 ipv4_address_data  = ""
	 ipv4_address_mgmt  = ""
	 ipv4_netmask_backup  = ""
	 ipv4_netmask_data  = ""
	 ipv4_netmask_mgmt  = ""
	 mgmt_lan  = "CMB-DMZ-MGMT-3071"
	 name_vm  = "lxpruebassmall001"
	 net_adapter_type  = "vmxnet3"
	 num_cpus  = 2
	 num_mem  = 4096
	 resource_pool  = "CMB-CL-DMZ"
	 vm_count  = 1
}
```
## Resources

| Name | Type |
|------|------|
| [vsphere_virtual_machine.virtualmachine](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/resources/virtual_machine) | resource |
| [vsphere_content_library.content_libraries](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/content_library) | data source |
| [vsphere_content_library_item.custom_content_libraries](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/content_library_item) | data source |
| [vsphere_datacenter.datacenter](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/datacenter) | data source |
| [vsphere_datastore.datastore](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/datastore) | data source |
| [vsphere_datastore.datastore_iso](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/datastore) | data source |
| [vsphere_network.networking_backup](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/network) | data source |
| [vsphere_network.networking_data](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/network) | data source |
| [vsphere_network.networking_mgmt](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/network) | data source |
| [vsphere_resource_pool.pool](https://registry.terraform.io/providers/hashicorp/vsphere/2.2.0/docs/data-sources/resource_pool) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backup_lan"></a> [backup\_lan](#input\_backup\_lan) | The name of the backup lan | `string` | `"CMB-DMZ-BACKUP-3081"` | no |
| <a name="input_content_libraries"></a> [content\_libraries](#input\_content\_libraries) | The name of the content library to use for the template | `string` | `"LINUX"` | no |
| <a name="input_custom_content_libraries"></a> [custom\_content\_libraries](#input\_custom\_content\_libraries) | The name of the custom content library to use for the template | `string` | `"TEMPLATE_RedHat_8.4"` | no |
| <a name="input_custom_iso_path"></a> [custom\_iso\_path](#input\_custom\_iso\_path) | The path to the custom ISO | `string` | `"ISO/Linux/RedHat_8.6/rhel-8.6-x86_64-dvd.iso"` | no |
| <a name="input_data_center"></a> [data\_center](#input\_data\_center) | The name of the data center | `string` | `"COMUN-BR"` | no |
| <a name="input_data_lan"></a> [data\_lan](#input\_data\_lan) | The name of the data lan | `string` | `"CMB-DMZ-DATA-3061"` | no |
| <a name="input_data_store"></a> [data\_store](#input\_data\_store) | The name of the data store | `string` | `"CMB-DS-DMZ-TY-3141-7E25"` | no |
| <a name="input_data_store_iso"></a> [data\_store\_iso](#input\_data\_store\_iso) | The name of the data store for the ISO | `string` | `"GEB-DS-ISO-NODMZ-TN-3215-D117"` | no |
| <a name="input_disk_label"></a> [disk\_label](#input\_disk\_label) | Label of the disk | `string` | `"first-disk.vmdk"` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50 | `number` | `60` | no |
| <a name="input_firmware"></a> [firmware](#input\_firmware) | The firmware type | `string` | `"efi"` | no |
| <a name="input_folder_name"></a> [folder\_name](#input\_folder\_name) | Input a name for Virtual Machine Ex. new\_vm | `string` | `"CMB-VMFOLDER-DMZ-LINUX-PRUEBAS"` | no |
| <a name="input_guest_id"></a> [guest\_id](#input\_guest\_id) | The guest id of the virtual machine | `string` | `"rhel8_64Guest"` | no |
| <a name="input_ipv4_address_backup"></a> [ipv4\_address\_backup](#input\_ipv4\_address\_backup) | The IPv4 address of the backup lan | `string` | `""` | no |
| <a name="input_ipv4_address_data"></a> [ipv4\_address\_data](#input\_ipv4\_address\_data) | The IPv4 address of the data lan | `string` | `""` | no |
| <a name="input_ipv4_address_mgmt"></a> [ipv4\_address\_mgmt](#input\_ipv4\_address\_mgmt) | The IPv4 address of the management lan | `string` | `""` | no |
| <a name="input_ipv4_netmask_backup"></a> [ipv4\_netmask\_backup](#input\_ipv4\_netmask\_backup) | The IPv4 netmask of the backup lan | `string` | `""` | no |
| <a name="input_ipv4_netmask_data"></a> [ipv4\_netmask\_data](#input\_ipv4\_netmask\_data) | The IPv4 netmask of the data lan | `string` | `""` | no |
| <a name="input_ipv4_netmask_mgmt"></a> [ipv4\_netmask\_mgmt](#input\_ipv4\_netmask\_mgmt) | The IPv4 netmask of the management lan | `string` | `""` | no |
| <a name="input_mgmt_lan"></a> [mgmt\_lan](#input\_mgmt\_lan) | The name of the management lan | `string` | `"CMB-DMZ-MGMT-3071"` | no |
| <a name="input_name_vm"></a> [name\_vm](#input\_name\_vm) | Input a name for Virtual Machine Ex. new\_vm | `string` | `"lxpruebassmall001"` | no |
| <a name="input_net_adapter_type"></a> [net\_adapter\_type](#input\_net\_adapter\_type) | The type of the network adapter | `string` | `"vmxnet3"` | no |
| <a name="input_num_cpus"></a> [num\_cpus](#input\_num\_cpus) | Amount of vCPU’s, Ex. 2 | `number` | `2` | no |
| <a name="input_num_mem"></a> [num\_mem](#input\_num\_mem) | Amount of Memory, Ex. 1024, 2048, 3073, 4096 | `number` | `4096` | no |
| <a name="input_password"></a> [password](#input\_password) | The password to use for the connection | `string` | n/a | yes |
| <a name="input_resource_pool"></a> [resource\_pool](#input\_resource\_pool) | The name of the resource pool | `string` | `"CMB-CL-DMZ"` | no |
| <a name="input_user"></a> [user](#input\_user) | The user to use for the connection | `string` | n/a | yes |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | Number of instaces | `number` | `1` | no |
| <a name="input_vsphere_server"></a> [vsphere\_server](#input\_vsphere\_server) | The vSphere server address | `string` | n/a | yes |
## Outputs

No outputs.
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->