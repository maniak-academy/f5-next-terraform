resource "bigipnext_cm_deploy_vmware" "vmware" {
  vsphere_provider = {
    provider_name      = "vc.maniak.lab"
    content_library    = "F5NEXTT"
    cluster_name       = "MyCluster"
    datacenter_name    = "Datacenter"
    datastore_name     = "datastore1"
    resource_pool_name = "Resources"
    vm_template_name   = "F5Next_v1"
  }

  instance = {
    instance_hostname          = "f5next-001.maniak.lab"
    mgmt_address               = "172.16.10.22"
    mgmt_prefix                = 24
    mgmt_gateway               = "172.16.10.1"
    mgmt_network_name          = "VM Network"
    mgmt_user                  = "admin-cm"
    mgmt_password              = "LsT3WGJDKqnHA42mg79NUF!"
    external_network_name      = "VM Network"
    internal_network_name      = "VM Network"
    ha_control_plane_network_name = "VM Network" # New - HA Control Plane Network
    ha_data_plane_network_name = "VM Network" # New - HA Data Plane Network
    cpu                        = 2
    memory                     = 8192
  }

  ntp_servers = ["0.us.pool.ntp.org"]
  dns_servers = ["8.8.8.8"]
  timeout     = 1500

#  l1_networks = [
#     {
#       name = "control_data_network"
#       vlans = [
#         {
#           vlan_name = "control_vlan"
#           vlan_tag  = 30
#           self_ips  = ["10.0.30.1"]
#         },
#         {
#           vlan_name = "data_vlan"
#           vlan_tag  = 40
#           self_ips  = ["10.0.40.1"]
#         }
#       ]
#     },
#     {
#       name = "external_network"
#       vlans = [
#         {
#           vlan_name = "external_vlan"
#           vlan_tag  = 50
#           self_ips  = ["192.168.50.1"]
#         }
#       ]
#     }
#   ]
}
