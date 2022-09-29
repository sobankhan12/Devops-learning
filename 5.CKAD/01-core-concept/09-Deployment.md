# Deployment

- A Kubernetes Deployment is **used to tell Kubernetes how to create or modify instances of the pods that hold a containerized application**. Deployments can scale the number of replica pods, enable rollout of updated code in a controlled manner, or roll back to an earlier deployment version if necessary

- how to update , versions and modification etc

  ````bash
  # how to get deployment list
  $ kubectl get deployment
  $ kubectl get deploy
  # how to create deploy from file
  $ kubectl apply -f deploy.yaml
  # how to delete deployment
  $ kubectl delete deploy web-dep
  # how to create deployment
  $ kubectl create deployment web-deploy --image=nginx 
  $ kubectl create deployment web-deploy --image=nginx --dry-run=client -o yaml > a.yaml
  $ kubectl create deployment --image=nginx nginx --replicas=2 --dry-run=client -o yaml > deployment.yaml
  
  ````

  

```yaml
kind: Deployment
apiVersion: apps/v1
metadata:
  name: web-deploy
spec:
  replicas: 3
  selector:
    matchLabels:
      tier: frontend
  template:
    metadata:
      name: web-deploy
      labels:
        tier: frontend
    spec:
      containers:
      - name: nginx
        image: nginx
```

