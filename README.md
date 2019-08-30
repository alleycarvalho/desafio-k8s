# Desafio: Utilizando K8S

## Testando com minikube pelo terminal
Iniciar o minikube:
```
minikube start
```

Verificar status do host:
```
minikube status
```

## 1) Servidor Web - Nginx
Aplicar configmap para o Nginx:
```
kubectl apply -f nginx/configmap.yaml
```

Aplicar deployment para o Nginx:
```
kubectl apply -f nginx/deployment.yaml
```

Aplicar service para o Nginx:
```
kubectl apply -f nginx/service.yaml
```

Testar o serviço do Ngnix:
```
minikube service nginx-service
```

## 2) Configuração do MySQL
Criar uma secret para o MySQL:
```
kubectl create secret generic mysql-pass --from-literal=password='a1b2c3d4'
```

Aplicar o volume persistente para o MySQL:
```
kubectl apply -f mysql/persistent-volume.yaml
```

Aplicar deployment para o MySQL:
```
kubectl apply -f mysql/deployment.yaml
```

Aplicar service para o MySQL:
```
kubectl apply -f mysql/service.yaml
```

Verificar os pods disponíveis:
```
kubectl get pods --show-labels
```

Verificar os deployments disponíveis:
```
kubectl get deployments
```

Verificar os serviços disponíveis:
```
kubectl get services
```

## 3) Desafio Go!
Imagem publicada no Docker Hub:

**[https://hub.docker.com/r/alleycarvalho/desafio-k8s](https://hub.docker.com/r/alleycarvalho/desafio-k8s)**

Executando container localmente para testes:
```
docker run -d --name greeting -p 8000:8000 --rm alleycarvalho/desafio-k8s
```

### Print da execução (CI) no Cloud Build:
![CI](/desafio-k8s.png)

### Executando com Kubernetes:

**[Acessar aplicação rodando com Kubernetes](http://35.222.233.221:8000/)**
