output "bucket_names" {
  description = "The names of the created GCS buckets"
  value       = keys(google_storage_bucket.buckets)
}
