terraform {
  backend "remote" {
    organization = "sherwin-williams"

    workspaces {
#      name = "tfc-gcd-aks-sb-<user id>"
    }
  }
}

module "gcd-aks-tfc" {
  source  = "app.terraform.io/sherwin-williams/gcd-aks-tfc/azure"
  version = "0.0.6"
  rg_name                   = var.rg_name
  cluster_name              = var.cluster_name
  aks_version               = var.aks_version
  vnet_subnet_id            = var.vnet_subnet_id
  internal_load_balancer_ip = var.internal_load_balancer_ip
  support_cname             = var.support_cname
  support_hostname          = var.support_hostname
  cname_alias               = var.cname_alias
  vnet_rg                   = var.vnet_rg
  vnet_name                 = var.vnet_name
  private_dns_hub_link_name = var.private_dns_hub_link_name
  cert_manager_crd_url      = var.cert_manager_crd_url
  rancher_api_url           = var.rancher_api_url
  rancher_access_key        = var.rancher_access_key
  rancher_secret_key        = var.rancher_secret_key
  kubernetes_client_secret  = var.kubernetes_client_secret
  kubernetes_client_id      = var.kubernetes_client_id
  subscription_id           = var.subscription_id
  location                  = var.location
}



