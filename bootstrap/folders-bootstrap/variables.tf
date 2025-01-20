variable "org_id" {
  description = "Org ID based on org_node"
  type        = map(any)
  default = {
    allex-gcp = "341317066484"
  }
}

// Folder config

variable "folder_business_units" {
  description = "Business unit folder list."
  type        = map(any)

}

variable "subfolders" {
  description = "sub folder map."
  type        = map(any)

}
variable "cos" {
  type        = string
  description = "class of service for gcp i.e test,prod,dev"
}

