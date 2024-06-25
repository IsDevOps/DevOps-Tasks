# Deployment guide

Required Tools:
 - Virtualbox
 - minikube
 - Dockers
 - Rancher
 - Argo
 - Terraform

Steps

- cd Vagrant-script

- vagrant up

- vagrant ssh minikube (second VM)

- curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

- chmod +x minikube

- sudo mv minikube /usr/local/bin/

- minikube start --driver=docker (Run the minikube)

- Enter the rancher IP on the browser and import existing cluster

- paste the generated command on the minikube terminal

- Confirm the cluster is up on Rancher.
  
https://192.168.56.10/dashboard/auth/login?timed-out 
This link the second (minikube VM) to the rancher

username: admin
password: Admin12345679


