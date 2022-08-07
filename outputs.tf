output "resource-ids" {
  value = <<-EOT
  Environment ID:   ${confluent_environment.environment.id}
  Kafka Cluster ID: ${confluent_kafka_cluster.basic.id}
  Service Accounts and their Kafka API Keys (API Keys inherit the permissions granted to the owner):
  ${confluent_service_account.app-manager.display_name}:                     ${confluent_service_account.app-manager.id}
  ${confluent_service_account.app-manager.display_name}'s Kafka API Key:     "${confluent_api_key.app-manager-kafka-api-key.id}"
  ${confluent_service_account.app-manager.display_name}'s Kafka API Secret:  "${confluent_api_key.app-manager-kafka-api-key.secret}"
  EOT

  sensitive = true
}

output "cluster" {
  value = confluent_kafka_cluster.basic
}

output "api-id" {
  value = confluent_api_key.app-manager-kafka-api-key.id
}

output "api-secret" {
  value = confluent_api_key.app-manager-kafka-api-key.secret
    sensitive = true

}

output "bootstrap-id" {
  value = confluent_kafka_cluster.basic.bootstrap_endpoint
}

output "environment" {
  value = confluent_environment.environment
}

output "service_account" {
  value = confluent_service_account.app-manager
}

output "api_key" {
  value = confluent_api_key.app-manager-kafka-api-key
    sensitive = true
}
