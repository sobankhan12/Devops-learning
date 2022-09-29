# Pod

- Pods are **the smallest, most basic deployable objects in Kubernetes**. A Pod represents a single instance of a running process in your cluster.
- A single pod can have multiple containers

```bash
# how to create pod with command
$ kubectl run --name nginx --image=nginx --restart=Never
# how to see pods list
$ kubectl get pods
# how to inspect pods
$ kubectl describe pod nginx
# how to see pods with full detail
$ kubectl get pods -o wide
# how to delete pod
$ kubectl delete pod webapp
# create pod with redis name
$ kubectl run redis --image=redis123 --restart=Never
# create yaml file for pod through dry-run
$ kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml
$ kubectl apply -f pod.yaml
# how to edit pod that is running
$ kubectl edit pod webapp
# how to get yaml output of running pod 
$ kubectl get pod webapp -o yaml
# how to convert running pod into yaml file
$ kubectl get pod webapp -o yaml  > webapp.yaml
# how to monitor the state of pods
$ kubectl get pods -w
```
- example of pod
```yaml
kind: Pod
apiVersion: v1
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx
```

