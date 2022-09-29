# NAMESPACE
## 1. How to get pods of specific namespace?
```bash
$ kubectl get pods --namespace=dev
```
## 2. How to swith another namespace?
```bash
$ kubectl config set-context $(kubectl config current-context ) --namespace=dev
```
## 3. How to create resource quota for namespace?
```bash
kind: ResourceQuota
apiVersion: v1
metadata:
  name: compute-quota
  namespace: dev
spec: 
  hard:
    pods: "10"
    requests.cpu: "4"
    limits.cpu: "10"
    limits.memory: "10Gi"
```
# CERTIFICATION TIPS
## 1. How to create yaml pod file with command?
```bash
$ kubectl run nginx --image=nginx --dry-run=client -o yaml
```
## 2. How to create yaml deployment file with command?
```bash
$ kubectl create nginx --image=nginx --dry-run=client -o yaml
```
## 3. How to create yaml deployment  in a specific file with command?
```bash
$ kubectl create nginx --image=nginx --dry-run=client -o yaml > simple-deploy.yaml
```
## 4. How to create service in with command?
```bash
$ kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml

 
```


