variable "bigquery_analytics_hub_listing_subscriptions" {
  description = <<EOT
Map of bigquery_analytics_hub_listing_subscriptions, attributes below
Required:
    - data_exchange_id
    - listing_id
    - location
Optional:
    - deletion_policy
    - project
    - destination_dataset (block):
        - dataset_reference (required, block):
            - dataset_id (required)
            - project_id (required)
        - description (optional)
        - friendly_name (optional)
        - labels (optional)
        - location (required)
        - replica_locations (optional)
    - destination_pubsub_subscription (block):
        - pubsub_subscription (required, block):
            - ack_deadline_seconds (optional)
            - bigquery_config (optional, block):
                - drop_unknown_fields (optional)
                - service_account_email (optional)
                - table (optional)
                - use_table_schema (optional)
                - use_topic_schema (optional)
                - write_metadata (optional)
            - cloud_storage_config (optional, block):
                - avro_config (optional, block):
                    - use_topic_schema (optional)
                    - write_metadata (optional)
                - bucket (optional)
                - filename_datetime_format (optional)
                - filename_prefix (optional)
                - filename_suffix (optional)
                - max_bytes (optional)
                - max_duration (optional)
                - max_messages (optional)
                - service_account_email (optional)
            - dead_letter_policy (optional, block):
                - dead_letter_topic (optional)
                - max_delivery_attempts (optional)
            - detached (optional)
            - enable_exactly_once_delivery (optional)
            - enable_message_ordering (optional)
            - expiration_policy (optional, block):
                - ttl (optional)
            - filter (optional)
            - labels (optional)
            - message_retention_duration (optional)
            - name (required)
            - push_config (optional, block):
                - attributes (optional)
                - no_wrapper (optional, block):
                    - write_metadata (optional)
                - oidc_token (optional, block):
                    - audience (optional)
                    - service_account_email (optional)
                - push_endpoint (optional)
            - retain_acked_messages (optional)
            - retry_policy (optional, block):
                - maximum_backoff (optional)
                - minimum_backoff (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    data_exchange_id = string
    listing_id       = string
    location         = string
    deletion_policy  = optional(string)
    project          = optional(string)
    destination_dataset = optional(object({
      dataset_reference = object({
        dataset_id = string
        project_id = string
      })
      description       = optional(string)
      friendly_name     = optional(string)
      labels            = optional(map(string))
      location          = string
      replica_locations = optional(set(string))
    }))
    destination_pubsub_subscription = optional(object({
      pubsub_subscription = object({
        ack_deadline_seconds = optional(number)
        bigquery_config = optional(object({
          drop_unknown_fields   = optional(bool)
          service_account_email = optional(string)
          table                 = optional(string)
          use_table_schema      = optional(bool)
          use_topic_schema      = optional(bool)
          write_metadata        = optional(bool)
        }))
        cloud_storage_config = optional(object({
          avro_config = optional(object({
            use_topic_schema = optional(bool)
            write_metadata   = optional(bool)
          }))
          bucket                   = optional(string)
          filename_datetime_format = optional(string)
          filename_prefix          = optional(string)
          filename_suffix          = optional(string)
          max_bytes                = optional(string)
          max_duration             = optional(string)
          max_messages             = optional(string)
          service_account_email    = optional(string)
        }))
        dead_letter_policy = optional(object({
          dead_letter_topic     = optional(string)
          max_delivery_attempts = optional(number)
        }))
        detached                     = optional(bool)
        enable_exactly_once_delivery = optional(bool)
        enable_message_ordering      = optional(bool)
        expiration_policy = optional(object({
          ttl = optional(string)
        }))
        filter                     = optional(string)
        labels                     = optional(map(string))
        message_retention_duration = optional(string)
        name                       = string
        push_config = optional(object({
          attributes = optional(map(string))
          no_wrapper = optional(object({
            write_metadata = optional(bool)
          }))
          oidc_token = optional(object({
            audience              = optional(string)
            service_account_email = optional(string)
          }))
          push_endpoint = optional(string)
        }))
        retain_acked_messages = optional(bool)
        retry_policy = optional(object({
          maximum_backoff = optional(string)
          minimum_backoff = optional(string)
        }))
      })
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

