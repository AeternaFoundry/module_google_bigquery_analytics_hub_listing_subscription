output "bigquery_analytics_hub_listing_subscriptions_id" {
  description = "Map of id values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_commercial_info" {
  description = "Map of commercial_info values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no commercial_info are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.commercial_info if v.commercial_info != null && length(v.commercial_info) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_creation_time" {
  description = "Map of creation_time values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no creation_time are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_data_exchange_id" {
  description = "Map of data_exchange_id values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no data_exchange_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.data_exchange_id if v.data_exchange_id != null && length(v.data_exchange_id) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_destination_dataset" {
  description = "Map of destination_dataset values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no destination_dataset are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => one(v.destination_dataset) if v.destination_dataset != null && length(v.destination_dataset) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_destination_pubsub_subscription" {
  description = "Map of destination_pubsub_subscription values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no destination_pubsub_subscription are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => one(v.destination_pubsub_subscription) if v.destination_pubsub_subscription != null && length(v.destination_pubsub_subscription) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_last_modify_time" {
  description = "Map of last_modify_time values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no last_modify_time are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.last_modify_time if v.last_modify_time != null && length(v.last_modify_time) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_linked_dataset_map" {
  description = "Map of linked_dataset_map values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no linked_dataset_map are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.linked_dataset_map if v.linked_dataset_map != null && length(v.linked_dataset_map) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_linked_resources" {
  description = "Map of linked_resources values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no linked_resources are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.linked_resources if v.linked_resources != null && length(v.linked_resources) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_listing_id" {
  description = "Map of listing_id values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no listing_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_location" {
  description = "Map of location values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no location are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_log_linked_dataset_query_user_email" {
  description = "Map of log_linked_dataset_query_user_email values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no log_linked_dataset_query_user_email are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.log_linked_dataset_query_user_email if v.log_linked_dataset_query_user_email != null }
}
output "bigquery_analytics_hub_listing_subscriptions_name" {
  description = "Map of name values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no name are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_organization_display_name" {
  description = "Map of organization_display_name values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no organization_display_name are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.organization_display_name if v.organization_display_name != null && length(v.organization_display_name) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_organization_id" {
  description = "Map of organization_id values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no organization_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_project" {
  description = "Map of project values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no project are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_resource_type" {
  description = "Map of resource_type values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no resource_type are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_state" {
  description = "Map of state values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no state are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.state if v.state != null && length(v.state) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_subscriber_contact" {
  description = "Map of subscriber_contact values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no subscriber_contact are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.subscriber_contact if v.subscriber_contact != null && length(v.subscriber_contact) > 0 }
}
output "bigquery_analytics_hub_listing_subscriptions_subscription_id" {
  description = "Map of subscription_id values across all bigquery_analytics_hub_listing_subscriptions, keyed the same as var.bigquery_analytics_hub_listing_subscriptions except keys with no subscription_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing_subscription.bigquery_analytics_hub_listing_subscriptions : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

