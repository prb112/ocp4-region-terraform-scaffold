################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

data "ibm_is_vpc" "vpc" {
  name = var.vpc_ibmcloud
}

data "external" "throw_error" {
  count = [data.ibm_is_vpc.vpc == var.pvs_ibmcloud_region]
  program = ["exit","-1"]
}