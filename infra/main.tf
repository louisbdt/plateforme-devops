resource "kind_cluster" "plateforme" {
  wait_for_ready = true
  name = "plateforme"
}