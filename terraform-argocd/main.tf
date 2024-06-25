# main.tf


resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = kubernetes_namespace.argocd.metadata[0].name
  values     = [
    file("/home/oseghale/Documents/DevOps-Tasks/HelmCharts/ChartTest1/value.yaml")
  ]
}
