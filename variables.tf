variable "confluent_cloud_api_key" {
  description = "Confluent Cloud API Key (also referred as Cloud API ID)"
  type        = string
}
variable "confluent_cloud_api_secret" {
  description = "Confluent Cloud API Secret"
  type        = string
  sensitive   = true
}
variable "name" {
  description = "Env Name"
  
}
variable "region" {
  description = "Cloud Region"
  
}
variable "cloud" {
  description = "Cloud Provider ex. AWS, Azure, GCP"
  
}
variable "profile" {
  description = "AWS Profile to use"
}
variable "owner_email" {
  description = "Confluent owners email address for resource tagging"
}
variable "opensearch_username" {
  description = "Confluent owners email address for resource tagging"
}
variable "opensearch_password" {
  description = "Confluent owners email address for resource tagging"
}
