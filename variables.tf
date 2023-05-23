################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache2.0
################################################################

################################################################
# Configure the IBM Cloud provider
################################################################
variable "ibmcloud_api_key" {
  type        = string
  description = "IBM Cloud API key associated with user's identity"
  default     = "<key>"
}

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