# Taints and Toleration
- **taints** are set on nodes
- **toleration** are set on pods
- **taint-effect**
  - **NoSchedule**
    The Kubernetes scheduler will only allow scheduling pods that have tolerations for the tainted nodes.
  - **PreferNoSchedule**
    The Kubernetes scheduler will try to avoid scheduling pods that don’t have tolerations for the tainted nodes.
  - **NoExecute**
    Kubernetes will evict the running pods from the nodes if the pods don’t have tolerations for the tainted nodes
### How to taint a node
```bash
$ kubectl taint node node-name key=value:taint-effect
$ kubectl taint node nod01 color=blue:NoSchedule
$ kubectl taint node node01 color=blue:PreferNoSchedule
$ kubectl taint node node01 color=blue:NoExecute
# how to check taint on specific node
$ kubectl describe node kubemaster | grep Taint
# how to remove taint from node use - at the end of taint
$ kubectl taint node node01 color=blue:blue:NoSchedule-
```
```yaml
kind: Pod
apiVersion: v1
metadata:
  name: app
spec:
  containers:
  - name: app
    image: nginx
  tolerations:
  - key: "app"
    operator: "Equal"
    value: "blue"
    effect: "NoSchedule"
