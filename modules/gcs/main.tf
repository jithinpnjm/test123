resource "google_storage_bucket" "buckets" {
  for_each      = var.buckets
  name          = each.key
  project       = var.project
  location      = each.value["location"]
  storage_class = each.value["storage_class"]
  uniform_bucket_level_access = each.value["uniform_bucket_level_access"]
  public_access_prevention = try(each.value["public_access_prevention"],"inherited")

  dynamic "lifecycle_rule" {
  for_each = try(each.value["lifecycle_rules"], [])
  content { 
    action { 
        type = lifecycle_rule.value.action.type  # e.g., "Delete" or "SetStorageClass"
        storage_class = lifecycle_rule.value.action.storage_class  # For SetStorageClass action (e.g., "COLDLINE")
      } 
    condition { 
    age = lifecycle_rule.value.condition.age # Objects older than this age (in days)
    created_before = lifecycle_rule.value.condition.created_before 
    with_state = lifecycle_rule.value.condition.with_state 
    matches_storage_class = lifecycle_rule.value.condition.matches_storage_class 
    num_newer_versions = lifecycle_rule.value.condition.num_newer_versions 
    } 
  } 
 }
}

resource "google_storage_bucket_iam_binding" "bucket_iam" {
  # Flattening bucket and roles for multiple IAM bindings
  for_each = merge([
    for bucket_key, bucket in var.buckets : {
      for role_key, role in bucket.iam_roles : 
        "${bucket_key}_${role_key}" => {
          bucket_name = bucket.name
          role        = role.role
          members     = role.members
        }
    }
  ]...)

  bucket  = each.value.bucket_name
  role    = each.value.role
  members = each.value.members
}