# Namespace

- Namespaces are **a way to organize clusters into virtual sub-clusters** — they can be helpful when different teams or projects share a Kubernetes cluster

  ```bash
  # to get pods in specific namespace
  $ kubectl get pods --namespace=dev
  $ kubectl get pods -n dev
  $ kubectl get pods -n=dev
  # to list namespace
  $ kubectl get namespace
  $ kubectl get ns
  # how to create namespace
  $ kubectl create namespace dev
  $ kubectl create ns prod
  # how to switch from one namespace to another
  $ kubectl config set-context $(kubectl config current-context) --namespace=prod
  # how to see all pods in all namespaces
  $ kubectl get pods --all-namespaces
  
  ```

  ```yaml
  kind: ReplicaSet
  apiVersion: apps/v1
  metadata:
    name: web-rs
    namespace: dev
    labels:
      type: frontend
  spec:
    replicas: 6 
    selector:
      matchLabels:
        type: frontend
    template:
      metadata:
        name: webapp
        labels:
          type: frontend
      spec:
        containers:
        - name: webapp
          image: nginx
  ```

  

  