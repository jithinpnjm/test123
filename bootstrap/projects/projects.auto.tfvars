project_attributes = {
    "allex-development-20210223-1"                            = {
        project_display_name              = "allex-development"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "development project for allex"
        company                           = "allex"
        folder_id                         = "572515592521"
        services_enable                   = ["compute.googleapis.com","cloudresourcemanager.googleapis.com","container.googleapis.com",
                                             "monitoring.googleapis.com", "cloudkms.googleapis.com","autoscaling.googleapis.com", "iamcredentials.googleapis.com",
                                             "serviceusage.googleapis.com","cloudasset.googleapis.com", "servicenetworking.googleapis.com"]
    },
     "allex-artifacts"                            = {
        project_display_name              = "allex-artifacts"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "projects to store artifacts in gcp artifact registry"
        company                           = "allex"
        folder_id                         = "599484274981"
        services_enable                   = ["storage-component.googleapis.com", "artifactregistry.googleapis.com", "iamcredentials.googleapis.com", "storage.googleapis.com",
         "serviceusage.googleapis.com"]
    },
     "allex-terraform-admin"                            = {
        project_display_name              = "allex-terraform-admin"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "project to hold terraform related resources"
        company                           = "allex"
        folder_id                         = "599484274981"
        services_enable                   = ["compute.googleapis.com","storage.googleapis.com","cloudasset.googleapis.com"]
    },
     "allex-staging-next"                            = {
        project_display_name              = "allex-staging-next"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "staging-next project for allex"
        company                           = "allex"
        folder_id                         = "461159595134"
        services_enable                   = ["compute.googleapis.com","cloudresourcemanager.googleapis.com","container.googleapis.com","monitoring.googleapis.com",
                                            "logging.googleapis.com", "cloudkms.googleapis.com","autoscaling.googleapis.com", "iamcredentials.googleapis.com", 
                                            "pubsub.googleapis.com", "secretmanager.googleapis.com", "dns.googleapis.com", "storage.googleapis.com", "run.googleapis.com",
                                             "eventarc.googleapis.com","sqladmin.googleapis.com","serviceusage.googleapis.com", "cloudasset.googleapis.com","servicenetworking.googleapis.com"]
    },

     "allex-staging"                            = {
        project_display_name              = "allex-staging"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "staging project for allex"
        company                           = "allex"
        folder_id                         = "868463091454"
        services_enable                   = ["compute.googleapis.com","cloudresourcemanager.googleapis.com","container.googleapis.com","monitoring.googleapis.com", "logging.googleapis.com",
                                            "cloudkms.googleapis.com","autoscaling.googleapis.com", "iamcredentials.googleapis.com", "pubsub.googleapis.com", "secretmanager.googleapis.com",
                                             "dns.googleapis.com", "run.googleapis.com", "eventarc.googleapis.com", "sqladmin.googleapis.com", "sts.googleapis.com","serviceusage.googleapis.com",
                                              "cloudasset.googleapis.com","servicenetworking.googleapis.com"]
    },
    "allex-production"                            = {
        project_display_name              = "allex-production"
        billing_account                   = "010A8D-3FA58E-B6E619"
        requestor                         = "jithin"
        team_dl                           = "devops"
        usecase                           = "production project for allex"
        company                           = "allex"
        folder_id                         = "702410720266"
        services_enable                   = ["compute.googleapis.com","cloudresourcemanager.googleapis.com","container.googleapis.com","monitoring.googleapis.com", "logging.googleapis.com",
                                            "cloudkms.googleapis.com","autoscaling.googleapis.com", "iamcredentials.googleapis.com", "pubsub.googleapis.com", "secretmanager.googleapis.com", 
                                            "dns.googleapis.com", "run.googleapis.com", "eventarc.googleapis.com", "sqladmin.googleapis.com", "storage.googleapis.com", "gkebackup.googleapis.com",
                                            "serviceusage.googleapis.com", "cloudasset.googleapis.com", "servicenetworking.googleapis.com"]
    },
}
