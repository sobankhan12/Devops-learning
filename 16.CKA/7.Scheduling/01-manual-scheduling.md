# Manual Scheduling
- if pod is created and it is pendind state means it is not schedule on any node
- kubernetes does not allow to modify pod to add **nodeName**
#### How to  schedule a pod on the node without 
- 1. you have to create a binding object
  ```yaml
  apiVersion: v1
  kind: Binding
  metadata:
    name: nginx-binding
  target:
    apiVersion: v1
    kind: Node
    name: node02
  ```
- 2. use post method 
   ```bash
   $ curl -k -H "Content-Type:application/json" -X POST -d '{"apiVersion":"v1", "kind": "Binding", "metadata": {"name": "hello-test"}, "target": {"apiVersion": "v1", "kind": "Node", "name": "k8s-node-02"}}'  --cert apiserver-kubelet-client.crt --key apiserver-kubelet-client.key https://k8s-101:6443/api/v1/namespaces/test-branch/pods/hello-test/binding
   ```
#### How to add node manually in manifest file
```yaml
---
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  -  image: nginx
     name: nginx
  nodeName: controlplane
```