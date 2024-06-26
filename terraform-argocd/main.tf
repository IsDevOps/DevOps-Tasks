resource "kubernetes_namespace" "argocd_namespace" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd_namespace" {
  name       = "argocd"
  namespace  = kubernetes_namespace.argocd_namespace.metadata[0].name  # Accessing the name from metadata
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"

  values = [
    <<EOF
    server:
      service:
        type: NodePort
      resources:
        requests:
          cpu: "100m"
          memory: "128Mi"
        limits:
          cpu: "500m"
          memory: "256Mi"
    EOF
  ]
}
