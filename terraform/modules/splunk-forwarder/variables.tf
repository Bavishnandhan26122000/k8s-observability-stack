variable "namespace" {
  description = "Namespace for Splunk"
  type        = string
  default     = "splunk"
}

variable "splunk_access_token" {
  description = "Splunk access token"
  type        = string
  sensitive   = true
}

variable "splunk_realm" {
  description = "Splunk realm"
  type        = string
}
