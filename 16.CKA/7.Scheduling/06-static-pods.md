# Static Pods
- Static Pods are managed directly by the kubelet daemon on a specific node, without the API server observing them.
- owner of static pod will be Node not like **replicaset or deployment**
- default path for static pod defination files **/etc/kubernetes/manifests/**
- you can see path of static pods files in kubelet config file **cat /var/lib/kubelet/config.yaml** like this
   **staticPodPath: /etc/kubernetes/manifests**


- static pod name include name of node
- if you want to delete static pod it will be created again and if you want to delete a static pod permanently then you go static pods files path and then delete that file 




```bash
# how to list static pods which owner name is node that pod will be static pod
$ kubectl get pods --all-namespaces -o custom-columns=NAME:.metadata.name,CONTROLLER:.metadata.ownerReferences[].kind,NAMESPACE:.metadata.namespace
# to which on which node those static pods are created
$ kubectl get pods --all-namespaces -o custom-columns=NAME:.metadata.name,CONTROLLER:.metadata.ownerReferences[].kind,NAMESPACE:.metadata.namespace,Node:.metadata.ownerReferences[].name
```