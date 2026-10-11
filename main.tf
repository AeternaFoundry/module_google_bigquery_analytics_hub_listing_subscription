resource "google_bigquery_analytics_hub_listing_subscription" "bigquery_analytics_hub_listing_subscriptions" {
  for_each = var.bigquery_analytics_hub_listing_subscriptions

  data_exchange_id = each.value.data_exchange_id
  listing_id       = each.value.listing_id
  location         = each.value.location
  deletion_policy  = each.value.deletion_policy
  project          = each.value.project

  dynamic "destination_dataset" {
    for_each = each.value.destination_dataset != null ? [each.value.destination_dataset] : []
    content {
      dataset_reference {
        dataset_id = destination_dataset.value.dataset_reference.dataset_id
        project_id = destination_dataset.value.dataset_reference.project_id
      }
      description       = destination_dataset.value.description
      friendly_name     = destination_dataset.value.friendly_name
      labels            = destination_dataset.value.labels
      location          = destination_dataset.value.location
      replica_locations = destination_dataset.value.replica_locations
    }
  }

  dynamic "destination_pubsub_subscription" {
    for_each = each.value.destination_pubsub_subscription != null ? [each.value.destination_pubsub_subscription] : []
    content {
      pubsub_subscription {
        ack_deadline_seconds = destination_pubsub_subscription.value.pubsub_subscription.ack_deadline_seconds
        dynamic "bigquery_config" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.bigquery_config != null ? [destination_pubsub_subscription.value.pubsub_subscription.bigquery_config] : []
          content {
            drop_unknown_fields   = bigquery_config.value.drop_unknown_fields
            service_account_email = bigquery_config.value.service_account_email
            table                 = bigquery_config.value.table
            use_table_schema      = bigquery_config.value.use_table_schema
            use_topic_schema      = bigquery_config.value.use_topic_schema
            write_metadata        = bigquery_config.value.write_metadata
          }
        }
        dynamic "cloud_storage_config" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.cloud_storage_config != null ? [destination_pubsub_subscription.value.pubsub_subscription.cloud_storage_config] : []
          content {
            dynamic "avro_config" {
              for_each = cloud_storage_config.value.avro_config != null ? [cloud_storage_config.value.avro_config] : []
              content {
                use_topic_schema = avro_config.value.use_topic_schema
                write_metadata   = avro_config.value.write_metadata
              }
            }
            bucket                   = cloud_storage_config.value.bucket
            filename_datetime_format = cloud_storage_config.value.filename_datetime_format
            filename_prefix          = cloud_storage_config.value.filename_prefix
            filename_suffix          = cloud_storage_config.value.filename_suffix
            max_bytes                = cloud_storage_config.value.max_bytes
            max_duration             = cloud_storage_config.value.max_duration
            max_messages             = cloud_storage_config.value.max_messages
            service_account_email    = cloud_storage_config.value.service_account_email
          }
        }
        dynamic "dead_letter_policy" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.dead_letter_policy != null ? [destination_pubsub_subscription.value.pubsub_subscription.dead_letter_policy] : []
          content {
            dead_letter_topic     = dead_letter_policy.value.dead_letter_topic
            max_delivery_attempts = dead_letter_policy.value.max_delivery_attempts
          }
        }
        detached                     = destination_pubsub_subscription.value.pubsub_subscription.detached
        enable_exactly_once_delivery = destination_pubsub_subscription.value.pubsub_subscription.enable_exactly_once_delivery
        enable_message_ordering      = destination_pubsub_subscription.value.pubsub_subscription.enable_message_ordering
        dynamic "expiration_policy" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.expiration_policy != null ? [destination_pubsub_subscription.value.pubsub_subscription.expiration_policy] : []
          content {
            ttl = expiration_policy.value.ttl
          }
        }
        filter                     = destination_pubsub_subscription.value.pubsub_subscription.filter
        labels                     = destination_pubsub_subscription.value.pubsub_subscription.labels
        message_retention_duration = destination_pubsub_subscription.value.pubsub_subscription.message_retention_duration
        name                       = destination_pubsub_subscription.value.pubsub_subscription.name
        dynamic "push_config" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.push_config != null ? [destination_pubsub_subscription.value.pubsub_subscription.push_config] : []
          content {
            attributes = push_config.value.attributes
            dynamic "no_wrapper" {
              for_each = push_config.value.no_wrapper != null ? [push_config.value.no_wrapper] : []
              content {
                write_metadata = no_wrapper.value.write_metadata
              }
            }
            dynamic "oidc_token" {
              for_each = push_config.value.oidc_token != null ? [push_config.value.oidc_token] : []
              content {
                audience              = oidc_token.value.audience
                service_account_email = oidc_token.value.service_account_email
              }
            }
            push_endpoint = push_config.value.push_endpoint
          }
        }
        retain_acked_messages = destination_pubsub_subscription.value.pubsub_subscription.retain_acked_messages
        dynamic "retry_policy" {
          for_each = destination_pubsub_subscription.value.pubsub_subscription.retry_policy != null ? [destination_pubsub_subscription.value.pubsub_subscription.retry_policy] : []
          content {
            maximum_backoff = retry_policy.value.maximum_backoff
            minimum_backoff = retry_policy.value.minimum_backoff
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

