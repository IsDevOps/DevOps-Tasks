
provider "kubernetes" {
  config_path = "/home/oseghale/Documents/DevOps-Tasks/terraform-argocd/k3s-cluster.yaml"
}

provider "helm" {
  kubernetes {
  config_path = "/home/oseghale/Documents/DevOps-Tasks/terraform-argocd/k3s-cluster.yaml"
  }
}
