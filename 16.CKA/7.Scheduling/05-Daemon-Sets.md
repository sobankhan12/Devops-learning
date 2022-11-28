# Daemon Sets
- it run a copy of pod in all nodes and when new node is added new copy of pod will run on the new node automatically
- it also same like replicaset and deploymnet but it has different usecas
### Use Cases for Daemon Sets
- monitoring agent in the shape of pod
- logs viewer
- kube proxy can be deployed as Daemon Sets
- 
```yaml
kind: DaemonSet
apiVersion: apps/v1
metadata:
  name: elasticsearch
spec:
  selector:
    matchLabels:
      app: monitoring-agent
  template:
    metadata:
      name: monitoring-agent
      labels:
        app: monitoring-agent
    spec:
      containers:
      - name: monitoring-agent
        image:  monitoring-agent
```

```bash
# how to see daemonsets
$ kubectl get daemonsets
$ kubectl describe daemonsets monitoring-agent
# how to see daemonset in all namespace
$ kubectl get daemonsets -A
# how to create daemon using command and change kind
$ kubectl create deployment elasticsearch --image=elasticsearch:12 -n kube-system --dry-run=client -o yaml>b.yam
```
