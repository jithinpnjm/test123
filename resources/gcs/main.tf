module "gcs_buckets" {
  source         = "../../modules/gcs"
  buckets        = var.buckets
}
