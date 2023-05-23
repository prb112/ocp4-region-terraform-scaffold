################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

variable "pvs_service_instance_id" {
  type        = string
  description = "The cloud instance ID of your account"
  default     = ""
}

variable "pvs_ibmcloud_region" {
  type        = string
  description = "The IBM Cloud region where you want to create the resources"
  default     = ""
}

variable "pvs_ibmcloud_zone" {
  type        = string
  description = "The zone of an IBM Cloud region where you want to create Power System resources"
  default     = ""
}

variable "vpc_ibmcloud" {
  type        = string
  description = "The IBM Cloud VPC which you want to connect"
  default     = ""
}