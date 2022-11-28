# SERVICE ACCOUNT 
# IT ACCOUNT USED BY MACHINE LIKE JENKINS USED SERVICE ACCOUNT FOR DEPLOYING APPLICATION OF KUBERNETES
# IT IS RESCTRICTED NOT USE DEFAULT TOKEN FOR POD
# automount sercviceaccount: false
# in the pod
## 1. How to get service account existing?
```bash
$ kubectl get serviceaccount
$ kubectl get sa
```