# KUBERNETES FOR BEGINNER
# Kubernetes Concepts - PODs, ReplicaSets, Deployments
## 1. How to create pod with command simple nginx image
```bash
$ kubectl run nginx --image=nginx:latest
```
## 2. How to check which image is used in this pods
```bash
$ kubectl describe pod "pod name"
```
## 3. How to check how many containers are running in this pods
```bash
# in container section containers list
$ kubectl describe pod "pod name" 
```
## 4. How to delete pod?
```bash
$ kubectl delete pod "pod name"
```
## 5. How to increase replica through command?
```bash
$ kubectl --replicas=4 replicaset myFirstReplica
```
# DEPLOYMENT
## 6. How to get deployment ?
```bash
$ kubectl get deployment
```
## 7. How to edit deployment?
```bash
$ kubectl edit deploy "deploy name"
```
## 8. How to check status of rollout of deployment?
```bash
$ kubectl rollout status deployment/myfirst-deployment
```
## 9. How to record changes in deployment?
```bash
$ kubectl create -f simple.yaml --record
```
## 10. How to check status of rollout of deployment?
```bash
$ kubectl rollout status "deployment name"
```
## 11. How to check history of deployment?
```bash
$ kubectl rollout histroy "deployment name"
```
## 12. How to edit image of deployment?
```bash
$ kubectl set image deployment/nginx-deployment nginx=nginx:1.16.1 --record
```
## 13. How to undo changes meaning back to previous version in deployment?
```bash
$ kubectl rollout undo "deployment name"
```
## 14. How to see history of specific version?
```bash
$ kubectl rollout history "deployment name " --revision="revision number"
```
## 15. How to undo previous specific version of deployment?
```bash
$ kubectl rollout undo "deployment name " --to-revision="revision number"
```
## 16. How to scale deployment in command?
```bash
$ kubectl scale "deployment name" --replicas=10
```
## 17. How to scale deployment in with specific min and max range and cpu utilization command?
```bash
$ kubectl autoscale "deployment name" --min=2 --max=5 --cpu-percentage=80
```
## 18. How to pause deployment ?
```bash
$ kubectl rollout pause "deployment name"
```
# SERVICES

