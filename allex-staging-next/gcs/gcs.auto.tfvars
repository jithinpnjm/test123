  #########GCS bucket Configuration#################
  ##################################################
  buckets   = {
    "allex-stg-next-thanos-storage" = {
      name = "allex-stg-next-thanos-storage"
      location = "europe-west3"
      storage_class = "STANDARD"
      project= "allex-staging-next"
      uniform_bucket_level_access = "true"
      public_access_prevention = ""
      iam_roles = [
        /*{
          role    = "roles/storage.objectViewer"
          members = ["user:alice@example.com", "user:bob@example.com"]
        },
        {
          role    = "roles/storage.admin"
          members = ["user:admin@example.com"]
        }*/
      ]
      lifecycle_rules = [
        {
          action = {
            type = "Delete"
            storage_class = null
          }
          condition = {
            age                        = 365
            created_before             = null
            with_state                 = null
            matches_storage_class      = []
            num_newer_versions         = null
          }
        },
      ]
    },  
    "allex-stg-next-neo4j-thanos-storage" = {
      name = "allex-stg-next-neo4j-thanos-storage"
      location = "europe-west3"
      storage_class = "STANDARD"
      uniform_bucket_level_access = "true"
      project= "allex-staging-next"
      public_access_prevention = ""
      iam_roles = []
      lifecycle_rules = [
        {
          action = {
            type = "Delete"
            storage_class = ""
          }
          condition = {
            age                        = 365
            created_before             = null
            with_state                 = null
            matches_storage_class      = []
            num_newer_versions         = null
          }
        },
      ]
    },
}

