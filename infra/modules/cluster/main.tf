terraform {
  required_providers {
    kind = { source = "tehcyx/kind", version = "~> 0.11" }
  }
}

resource "kind_cluster" "this" {
  name           = var.nom
  wait_for_ready = true
}