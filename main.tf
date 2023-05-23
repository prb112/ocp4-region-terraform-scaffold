################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibmcloud_region
  zone             = var.ibmcloud_zone
}

### Prepares the Bastion Support machine
module "prepare" {
  source = "./modules/1_prepare"

  bastion                         = var.bastion
  service_instance_id             = var.service_instance_id
  cluster_id                      = local.cluster_id
  name_prefix                     = local.name_prefix
  node_prefix                     = local.node_prefix
  cluster_domain                  = var.cluster_domain
  rhel_image_name                 = var.rhel_image_name
  processor_type                  = var.processor_type
  system_type                     = var.system_type
  network_name                    = var.network_name
  network_dns                     = var.dns_forwarders == "" ? [] : [for dns in split(";", var.dns_forwarders) : trimspace(dns)]
  bastion_health_status           = var.bastion_health_status
  private_network_mtu             = var.private_network_mtu
  rhel_username                   = var.rhel_username
  private_key                     = local.private_key
  public_key                      = local.public_key
  ssh_agent                       = var.ssh_agent
  connection_timeout              = var.connection_timeout
  rhel_subscription_username      = var.rhel_subscription_username
  rhel_subscription_password      = var.rhel_subscription_password
  rhel_subscription_org           = var.rhel_subscription_org
  rhel_subscription_activationkey = var.rhel_subscription_activationkey
  ansible_repo_name               = var.ansible_repo_name
  rhel_smt                        = var.rhel_smt
}