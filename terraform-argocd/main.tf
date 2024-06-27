# main.tf
resource "kubernetes_namespace" "argocd_" {
  metadata {
    name = "argocd"
  }
}

resource "kubernetes_manifest" "argocd_install" {
  manifest = {
    apiVersion = "batch/v1"
    kind       = "Job"
  
    metadata ={
      name      = "argocd-install"
      namespace = kubernetes_namespace.argocd_.metadata[0].name
    }
    spec ={
      template ={
        spec ={
          containers ={
            name  = "argocd-installer"
            image = "argoproj/argocd:v2.0.1"
            command = ["sh", "-c", "kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml"]
          }
          restartPolicy = "Never"
        }
      }
    }
  }
}
