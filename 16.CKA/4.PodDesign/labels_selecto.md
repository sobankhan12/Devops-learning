# Annotations:
## it is used for description of pod like email id phone number
```bash
annotations:
  email: sobankhan252@gmail.com
```
## get pods with labels
```bash
$ kubectl get pods --show-labels
$ kubectl get pods --selector env=dev
# get pod with these labels
$ kubectl get pod --selector env=prod,bu=finance,tier=frontend
```
## 
