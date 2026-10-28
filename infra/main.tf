resource "kind_cluster" "plateforme" {
  wait_for_ready = true
  name = "plateforme"
}

resource "helm_release" "argocd" {
    name = "argocd"
    namespace = "argocd"
    create_namespace = true
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    version = "10.10.3"
    timeout = 600
}