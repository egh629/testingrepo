t#Variable overrides 
#rg_name                   = ""
#cluster_name              = ""
aks_version               = "1.19.3"
#vnet_subnet_id            = "/subscriptions/c811428c-9a63-41ff-866b-5642b7053412/resourceGroups/us-corpit-gpo-gcdlinux-akscontainer-sb-001-network-rg/providers/Microsoft.Network/virtualNetworks/us-corpit-gpo-gcdlinux-akscontainer-sb-001-vnet/subnets/<user id>-aks-subnet"
#internal_load_balancer_ip = ""
#support_hostname          = ""
#support_cname             = "*."
#cname_alias               = "<cname>.sb.shwaks.com"
vnet_name                 = "us-corpit-gpo-gcdlinux-akscontainer-sb-001-vnet"
vnet_rg                   = "us-corpit-gpo-gcdlinux-akscontainer-sb-001-network-rg"
#private_dns_hub_link_name = "sb-platops-<name>-aks-link"
cert_manager_crd_url      = "http://github.com/jetstack/cert-manager/releases/download/v0.16.0/cert-manager.crds.yaml"
rancher_api_url    = "https://dev-rancher.sherwin.com/v3"
location                  = "EastUS2"
