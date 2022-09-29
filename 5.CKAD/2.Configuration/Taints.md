# TAINTS
# IT IS USED FOR TAINTING WORKER NODE MEAN THESE TYPE OF APPLICATION COME OR DEPLOY ON THIS NODE
## Create a taint on node01 with key spray value should be macharmar effect should no schedule
```bash
$ kubectl taint nodes node01 app=blue:NoSchedule
```
# How to delete or untaint nodes just - at the end
```bash
$ kubectl taint nodes controlplane node-role.kubernetes.io/master:NoSchedule-
```