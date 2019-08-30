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
