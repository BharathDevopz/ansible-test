variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "machine_type" {
  description = "Machine type (e.g., n1-standard-1)"
  type        = string
  default     = "n1-standard-1"
}

variable "disk_image" {
  description = "Disk image for the VM (e.g., debian-cloud/debian-11)"
  type        = string
}

variable "network" {
  description = "Network name"
  type        = string
  default     = "default"
}
