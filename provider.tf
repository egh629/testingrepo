// Terraform providers

provider "kubernetes" {
  load_config_file       = "false"
  host                   = module.gcd-aks-tfc.kube_config[0].host
  username               = module.gcd-aks-tfc.kube_config[0].username
  password               = module.gcd-aks-tfc.kube_config[0].password
  client_certificate     = base64decode(module.gcd-aks-tfc.kube_config[0].client_certificate)
  client_key             = base64decode(module.gcd-aks-tfc.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(module.gcd-aks-tfc.kube_config[0].cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    load_config_file = false
    host             = module.gcd-aks-tfc.kube_config[0].host
    username         = module.gcd-aks-tfc.kube_config[0].username
    password         = module.gcd-aks-tfc.kube_config[0].password

    client_certificate     = base64decode(module.gcd-aks-tfc.kube_config[0].client_certificate)
    client_key             = base64decode(module.gcd-aks-tfc.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(module.gcd-aks-tfc.kube_config[0].cluster_ca_certificate)
  }
}

provider "rancher2" {
  api_url    = var.rancher_api_url
  access_key = var.rancher_access_key
  secret_key = var.rancher_secret_key
}


provider "azurerm" {
  features {}
}

provider "azuread" {
}
