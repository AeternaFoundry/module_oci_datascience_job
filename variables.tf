variable "datascience_jobs" {
  description = <<EOT
Map of datascience_jobs, attributes below
Required:
    - compartment_id
    - project_id
Optional:
    - artifact_content_disposition
    - artifact_content_length
    - defined_tags
    - delete_related_job_runs
    - description
    - display_name
    - freeform_tags
    - job_artifact
    - job_configuration_details (block):
        - command_line_arguments (optional)
        - environment_variables (optional)
        - job_type (required)
        - maximum_runtime_in_minutes (optional)
        - startup_probe_details (optional, block):
            - command (required)
            - failure_threshold (optional)
            - initial_delay_in_seconds (optional)
            - job_probe_check_type (required)
            - period_in_seconds (optional)
    - job_environment_configuration_details (block):
        - cmd (optional)
        - entrypoint (optional)
        - image (required)
        - image_digest (optional)
        - image_signature_id (optional)
        - job_environment_type (required)
    - job_infrastructure_configuration_details (block):
        - block_storage_size_in_gbs (optional)
        - compute_target_id (optional)
        - job_infrastructure_type (required)
        - job_shape_config_details (optional, block):
            - cpu_baseline (optional)
            - memory_in_gbs (optional)
            - ocpus (optional)
        - resource_configuration (optional, block):
            - resource_limit_configuration (optional, block):
                - memory_in_gbs (optional)
                - ocpus (optional)
            - resource_request_configuration (optional, block):
                - gpus (optional)
                - memory_in_gbs (optional)
                - ocpus (optional)
        - shape_name (optional)
        - subnet_id (optional)
    - job_log_configuration_details (block):
        - enable_auto_log_creation (optional)
        - enable_logging (optional)
        - log_group_id (optional)
        - log_id (optional)
    - job_node_configuration_details (block):
        - job_network_configuration (optional, block):
            - job_network_type (required)
            - subnet_id (optional)
        - job_node_group_configuration_details_list (optional, block):
            - job_configuration_details (optional, block):
                - command_line_arguments (optional)
                - environment_variables (optional)
                - job_type (required)
                - maximum_runtime_in_minutes (optional)
                - startup_probe_details (optional, block):
                    - command (required)
                    - failure_threshold (optional)
                    - initial_delay_in_seconds (optional)
                    - job_probe_check_type (required)
                    - period_in_seconds (optional)
            - job_environment_configuration_details (optional, block):
                - cmd (optional)
                - entrypoint (optional)
                - image (required)
                - image_digest (optional)
                - image_signature_id (optional)
                - job_environment_type (required)
            - job_infrastructure_configuration_details (optional, block):
                - block_storage_size_in_gbs (optional)
                - compute_target_id (optional)
                - job_infrastructure_type (required)
                - job_shape_config_details (optional, block):
                    - cpu_baseline (optional)
                    - memory_in_gbs (optional)
                    - ocpus (optional)
                - resource_configuration (optional, block):
                    - resource_limit_configuration (optional, block):
                        - memory_in_gbs (optional)
                        - ocpus (optional)
                    - resource_request_configuration (optional, block):
                        - gpus (optional)
                        - memory_in_gbs (optional)
                        - ocpus (optional)
                - shape_name (optional)
                - subnet_id (optional)
            - minimum_success_replicas (optional)
            - name (required)
            - replicas (optional)
        - job_node_type (required)
        - maximum_runtime_in_minutes (optional)
        - startup_order (optional)
    - job_storage_mount_configuration_details_list (block):
        - bucket (optional)
        - destination_directory_name (required)
        - destination_path (optional)
        - export_id (optional)
        - mount_target_id (optional)
        - namespace (optional)
        - prefix (optional)
        - storage_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id               = string
    project_id                   = string
    artifact_content_disposition = optional(string)
    artifact_content_length      = optional(string)
    defined_tags                 = optional(map(string))
    delete_related_job_runs      = optional(bool)
    description                  = optional(string)
    display_name                 = optional(string)
    freeform_tags                = optional(map(string))
    job_artifact                 = optional(string)
    job_configuration_details = optional(object({
      command_line_arguments     = optional(string)
      environment_variables      = optional(map(string))
      job_type                   = string
      maximum_runtime_in_minutes = optional(string)
      startup_probe_details = optional(object({
        command                  = list(string)
        failure_threshold        = optional(number)
        initial_delay_in_seconds = optional(number)
        job_probe_check_type     = string
        period_in_seconds        = optional(number)
      }))
    }))
    job_environment_configuration_details = optional(object({
      cmd                  = optional(list(string))
      entrypoint           = optional(list(string))
      image                = string
      image_digest         = optional(string)
      image_signature_id   = optional(string)
      job_environment_type = string
    }))
    job_infrastructure_configuration_details = optional(object({
      block_storage_size_in_gbs = optional(number)
      compute_target_id         = optional(string)
      job_infrastructure_type   = string
      job_shape_config_details = optional(object({
        cpu_baseline  = optional(string)
        memory_in_gbs = optional(number)
        ocpus         = optional(number)
      }))
      resource_configuration = optional(object({
        resource_limit_configuration = optional(object({
          memory_in_gbs = optional(number)
          ocpus         = optional(number)
        }))
        resource_request_configuration = optional(object({
          gpus          = optional(number)
          memory_in_gbs = optional(number)
          ocpus         = optional(number)
        }))
      }))
      shape_name = optional(string)
      subnet_id  = optional(string)
    }))
    job_log_configuration_details = optional(object({
      enable_auto_log_creation = optional(bool)
      enable_logging           = optional(bool)
      log_group_id             = optional(string)
      log_id                   = optional(string)
    }))
    job_node_configuration_details = optional(object({
      job_network_configuration = optional(object({
        job_network_type = string
        subnet_id        = optional(string)
      }))
      job_node_group_configuration_details_list = optional(list(object({
        job_configuration_details = optional(object({
          command_line_arguments     = optional(string)
          environment_variables      = optional(map(string))
          job_type                   = string
          maximum_runtime_in_minutes = optional(string)
          startup_probe_details = optional(object({
            command                  = list(string)
            failure_threshold        = optional(number)
            initial_delay_in_seconds = optional(number)
            job_probe_check_type     = string
            period_in_seconds        = optional(number)
          }))
        }))
        job_environment_configuration_details = optional(object({
          cmd                  = optional(list(string))
          entrypoint           = optional(list(string))
          image                = string
          image_digest         = optional(string)
          image_signature_id   = optional(string)
          job_environment_type = string
        }))
        job_infrastructure_configuration_details = optional(object({
          block_storage_size_in_gbs = optional(number)
          compute_target_id         = optional(string)
          job_infrastructure_type   = string
          job_shape_config_details = optional(object({
            cpu_baseline  = optional(string)
            memory_in_gbs = optional(number)
            ocpus         = optional(number)
          }))
          resource_configuration = optional(object({
            resource_limit_configuration = optional(object({
              memory_in_gbs = optional(number)
              ocpus         = optional(number)
            }))
            resource_request_configuration = optional(object({
              gpus          = optional(number)
              memory_in_gbs = optional(number)
              ocpus         = optional(number)
            }))
          }))
          shape_name = optional(string)
          subnet_id  = optional(string)
        }))
        minimum_success_replicas = optional(number)
        name                     = string
        replicas                 = optional(number)
      })))
      job_node_type              = string
      maximum_runtime_in_minutes = optional(string)
      startup_order              = optional(string)
    }))
    job_storage_mount_configuration_details_list = optional(list(object({
      bucket                     = optional(string)
      destination_directory_name = string
      destination_path           = optional(string)
      export_id                  = optional(string)
      mount_target_id            = optional(string)
      namespace                  = optional(string)
      prefix                     = optional(string)
      storage_type               = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_configuration_details == null || (contains([for v in ["DEFAULT", "EMPTY"] : lower(v)], lower(v.job_configuration_details.job_type)))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"EMPTY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_configuration_details == null || (v.job_configuration_details.startup_probe_details == null || (contains([for v in ["EXEC"] : lower(v)], lower(v.job_configuration_details.startup_probe_details.job_probe_check_type))))
      )
    ])
    error_message = "must be one of: \"EXEC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_environment_configuration_details == null || (contains([for v in ["OCIR_CONTAINER"] : lower(v)], lower(v.job_environment_configuration_details.job_environment_type)))
      )
    ])
    error_message = "must be one of: \"OCIR_CONTAINER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_infrastructure_configuration_details == null || (contains([for v in ["EMPTY", "MANAGED_COMPUTE_CLUSTER", "ME_STANDALONE", "MULTI_NODE", "STANDALONE"] : lower(v)], lower(v.job_infrastructure_configuration_details.job_infrastructure_type)))
      )
    ])
    error_message = "must be one of: \"EMPTY\", \"MANAGED_COMPUTE_CLUSTER\", \"ME_STANDALONE\", \"MULTI_NODE\", \"STANDALONE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (contains([for v in ["MULTI_NODE"] : lower(v)], lower(v.job_node_configuration_details.job_node_type)))
      )
    ])
    error_message = "must be one of: \"MULTI_NODE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (v.job_node_configuration_details.job_network_configuration == null || (contains([for v in ["CUSTOM_NETWORK", "DEFAULT_NETWORK"] : lower(v)], lower(v.job_node_configuration_details.job_network_configuration.job_network_type))))
      )
    ])
    error_message = "must be one of: \"CUSTOM_NETWORK\", \"DEFAULT_NETWORK\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (v.job_node_configuration_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_details.job_node_group_configuration_details_list : (item.job_configuration_details == null || (contains([for v in ["DEFAULT", "EMPTY"] : lower(v)], lower(item.job_configuration_details.job_type))))]))
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"EMPTY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (v.job_node_configuration_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_details.job_node_group_configuration_details_list : (item.job_configuration_details == null || (item.job_configuration_details.startup_probe_details == null || (contains([for v in ["EXEC"] : lower(v)], lower(item.job_configuration_details.startup_probe_details.job_probe_check_type)))))]))
      )
    ])
    error_message = "must be one of: \"EXEC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (v.job_node_configuration_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_details.job_node_group_configuration_details_list : (item.job_environment_configuration_details == null || (contains([for v in ["OCIR_CONTAINER"] : lower(v)], lower(item.job_environment_configuration_details.job_environment_type))))]))
      )
    ])
    error_message = "must be one of: \"OCIR_CONTAINER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_node_configuration_details == null || (v.job_node_configuration_details.job_node_group_configuration_details_list == null || alltrue([for item in v.job_node_configuration_details.job_node_group_configuration_details_list : (item.job_infrastructure_configuration_details == null || (contains([for v in ["EMPTY", "MANAGED_COMPUTE_CLUSTER", "ME_STANDALONE", "MULTI_NODE", "STANDALONE"] : lower(v)], lower(item.job_infrastructure_configuration_details.job_infrastructure_type))))]))
      )
    ])
    error_message = "must be one of: \"EMPTY\", \"MANAGED_COMPUTE_CLUSTER\", \"ME_STANDALONE\", \"MULTI_NODE\", \"STANDALONE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.datascience_jobs : (
        v.job_storage_mount_configuration_details_list == null || alltrue([for item in v.job_storage_mount_configuration_details_list : (contains([for v in ["FILE_STORAGE", "OBJECT_STORAGE"] : lower(v)], lower(item.storage_type)))])
      )
    ])
    error_message = "must be one of: \"FILE_STORAGE\", \"OBJECT_STORAGE\""
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

