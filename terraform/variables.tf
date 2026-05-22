variable "splunk_access_token" {
  description = "Splunk access token"
  type        = string
  sensitive   = true
  default     = "dummy-token"
}

variable "splunk_realm" {
  description = "Splunk realm"
  type        = string
  default     = "us0"
}
