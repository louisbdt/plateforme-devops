module "cluster" {
  source = "./modules/cluster"
  nom    = "plateforme"
}

module "argocd" {
  source        = "./modules/argocd"
  version_chart = "10.10.3"
  depends_on    = [module.cluster]
}