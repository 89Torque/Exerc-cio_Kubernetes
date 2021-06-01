# cmd login no azure
az login

# Chaves de acesso ao az
az ad sp create-for-rbac --skip-assignment

#comando pasta terraform

cd terraform

# iniciando o terraform
terraform init

# startar o plan
terraform plan

# alterando o ambiente
terraform apply

# Imputar credenciais do AKS
az aks get-credentials --resource-group rg-aulainfra --name teste-aks

# up config da aplicação 1
kubectl apply -f aks/1-config

# up config da aplicação 2
kubectl apply -f aks/2-db

# up config da aplicação 3
kubectl apply -f aks/3-app

###testando conexão###

# Pegar o IP do service mysql
## kubectl get all -n aulainfra 

# acessando o pod do nginx
#kubectl exec -it nginx -- sh

#executando dentro do nginx
# apt-get update
# apt-get install inetutils-ping
# ping <IP DO SERVICE MYSQL>
