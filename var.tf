# -
# - Core object
# -
variable "app_service_location" {
  description = "App Service resources location if different that the resource group's location."
  type        = string
  default     = ""
}

variable "app_service_additional_tags" {
  description = "Additional tags for the App Service resources, in addition to the resource group tags."
  type        = map(string)
  default     = {}
}

variable "app_service_prefix" {
  description = "App Service resourcess name prefix."
  type        = string
}

variable "app_service_rg" {
  description = "The App Service resources group name."
  type        = string
}

# -
# - Main resources
# -
variable "app_service_plans" {
  description = "The App Services plans with their properties."
/*  type        = map(object({
		                   id = string
											 prefix = string
											 kind = string
											 sku_tier = string
											 sku_capacity = number
											 sku_size = string
											 reserved = bool
											 maximum_elastic_worker_count = number
											 per_site_scaling = bool
										 }))
*/
  type = any
}

variable "existing_app_service_plans" {
  description = "Existing App Services plans."
  type        = any
  default     = {}
}


variable "app_services" {
  description = "The App Services with their properties."
 /* type        = map(object({
		                id = string
						        enabled = bool
						        active_directory = map(string)
						        additional_login_params = any
						        allowed_external_redirect_urls = any
						        default_provider = any
						        issuer = any
						        runtime_version = string
						        token_refresh_extension_hours = number
						        token_store_enanled = bool
										unauthenticated_client_action = any
										backup = any
										storage_accounts = any
										connection_strings = any
										client_affinity_enabled = bool
										client_cert_enabled = bool
										https_only = bool
										application_logs = any
										http_logs = any
										site_config = any
										identity = any
							}))
	*/
	type = any
}

# -
# - Other
# -
variable "null_array" {
  description = ""
  default     = []
}

/*
variable "subnet_id" {
	type = string
}
*/
