output "datascience_jobs_id" {
  description = "Map of id values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no id are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_jobs_artifact_content_disposition" {
  description = "Map of artifact_content_disposition values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no artifact_content_disposition are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.artifact_content_disposition if v.artifact_content_disposition != null && length(v.artifact_content_disposition) > 0 }
}
output "datascience_jobs_artifact_content_length" {
  description = "Map of artifact_content_length values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no artifact_content_length are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.artifact_content_length if v.artifact_content_length != null && length(v.artifact_content_length) > 0 }
}
output "datascience_jobs_artifact_content_md5" {
  description = "Map of artifact_content_md5 values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no artifact_content_md5 are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.artifact_content_md5 if v.artifact_content_md5 != null && length(v.artifact_content_md5) > 0 }
}
output "datascience_jobs_artifact_last_modified" {
  description = "Map of artifact_last_modified values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no artifact_last_modified are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.artifact_last_modified if v.artifact_last_modified != null && length(v.artifact_last_modified) > 0 }
}
output "datascience_jobs_compartment_id" {
  description = "Map of compartment_id values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_jobs_created_by" {
  description = "Map of created_by values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no created_by are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "datascience_jobs_defined_tags" {
  description = "Map of defined_tags values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datascience_jobs_delete_related_job_runs" {
  description = "Map of delete_related_job_runs values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no delete_related_job_runs are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.delete_related_job_runs if v.delete_related_job_runs != null }
}
output "datascience_jobs_description" {
  description = "Map of description values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no description are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "datascience_jobs_display_name" {
  description = "Map of display_name values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no display_name are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datascience_jobs_empty_artifact" {
  description = "Map of empty_artifact values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no empty_artifact are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.empty_artifact if v.empty_artifact != null }
}
output "datascience_jobs_freeform_tags" {
  description = "Map of freeform_tags values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datascience_jobs_job_artifact" {
  description = "Map of job_artifact values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_artifact are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.job_artifact if v.job_artifact != null && length(v.job_artifact) > 0 }
}
output "datascience_jobs_job_configuration_details" {
  description = "Map of job_configuration_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => one(v.job_configuration_details) if v.job_configuration_details != null && length(v.job_configuration_details) > 0 }
}
output "datascience_jobs_job_environment_configuration_details" {
  description = "Map of job_environment_configuration_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_environment_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => one(v.job_environment_configuration_details) if v.job_environment_configuration_details != null && length(v.job_environment_configuration_details) > 0 }
}
output "datascience_jobs_job_infrastructure_configuration_details" {
  description = "Map of job_infrastructure_configuration_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_infrastructure_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => one(v.job_infrastructure_configuration_details) if v.job_infrastructure_configuration_details != null && length(v.job_infrastructure_configuration_details) > 0 }
}
output "datascience_jobs_job_log_configuration_details" {
  description = "Map of job_log_configuration_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_log_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => one(v.job_log_configuration_details) if v.job_log_configuration_details != null && length(v.job_log_configuration_details) > 0 }
}
output "datascience_jobs_job_node_configuration_details" {
  description = "Map of job_node_configuration_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_node_configuration_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => one(v.job_node_configuration_details) if v.job_node_configuration_details != null && length(v.job_node_configuration_details) > 0 }
}
output "datascience_jobs_job_storage_mount_configuration_details_list" {
  description = "Map of job_storage_mount_configuration_details_list values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no job_storage_mount_configuration_details_list are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.job_storage_mount_configuration_details_list if v.job_storage_mount_configuration_details_list != null && length(v.job_storage_mount_configuration_details_list) > 0 }
}
output "datascience_jobs_lifecycle_details" {
  description = "Map of lifecycle_details values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datascience_jobs_project_id" {
  description = "Map of project_id values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no project_id are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "datascience_jobs_state" {
  description = "Map of state values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no state are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datascience_jobs_time_created" {
  description = "Map of time_created values across all datascience_jobs, keyed the same as var.datascience_jobs except keys with no time_created are omitted"
  value       = { for k, v in oci_datascience_job.datascience_jobs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

