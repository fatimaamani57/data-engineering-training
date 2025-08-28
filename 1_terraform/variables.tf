variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "gen-lang-client-0417009525"

}

variable "region" {
  description = "Project region"
  default     = "us-central1"

}

variable "location" {
  description = "Project location"
  default     = "US"

}

variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default     = "demo_dataset"

}

variable "gcs_bucket_name" {
  description = "My Storage Bucket name"
  default     = "gen-lang-client-0417009525-terra-bucket"

}

variable "gcs_storage_class" {
  description = "Bucket storage class"
  default     = "STANDARD"

}