#Variable definitions 
variable "rg_name" {
  type        = string
  description = "Name of the (already existing) resource group in which to create the target AKS cluster"
}

variable "cluster_name" {
  type        = string
  description = "Name of the cluster to create"
}


variable "aks_version" {
  type        = string
  description = "Kubernetes version to create.  Must be supported by AKS."
}

variable "vnet_subnet_id" {
  type        = string
  description = "Id of an already existing subnet.  See tf-common/virtual_network for more information."
}

variable "kubernetes_client_id" {
  type = string
}
variable "kubernetes_client_secret" {
  type = string
}

variable "internal_load_balancer_ip" {
  type = string
}

variable "support_hostname" {
  default = ""
}
variable "support_cname" {
  default = ""
}
variable "cname_alias" {
  default = ""
}

variable "vnet_name" {
  type = string
}
variable "vnet_rg" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "private_dns_hub_link_name" {
  type = string
}
variable "cert_manager_crd_url" {
  type = string
}

variable "rancher_api_url" {
  type = string
}
variable "rancher_access_key" {
  type = string
}
variable "rancher_secret_key" {
  type = string
}

variable "location" {
  type = string
}

