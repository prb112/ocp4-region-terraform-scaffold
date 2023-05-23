################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

output "bastion_external_vip" {
  depends_on = [null_resource.bastion_init]
  value      = local.bastion_count > 1 ? ibm_pi_network_port_attach.bastion_internal_vip[0].public_ip : ""
}
