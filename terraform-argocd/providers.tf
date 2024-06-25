provider "kubernetes" {
  host                   = "https://192.168.56.11"
  token                  = var.rancher_api_token
  insecure               = true
  client_certificate     = file("/home/vagrant/.minikube/profiles/minikube/client.crt")
  client_key             = file("/home/vagrant/.minikube/profiles/minikube/client.key")
}
