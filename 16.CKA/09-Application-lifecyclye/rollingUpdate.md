# Rolling Update
## it is used to record or the status of deployment
```bash
# history of deployment
$ kubectl rollout history  "deployment name"
# update deployment with new image
$ kubectl set image deployment "deploy name" "container-name"=nginx:1.7 
# to undo previous version
$ kubectl rollout undo deployment  "deploy name" --revision=1
# to see image which is used by deploy
$ kubectl describe deploy frontend | grep -i image

# List deployments:
$kubectl get deploy

# Scale a deployment “test” to 3 replicas:
$ kubectl scale deploy/test --replicas=3

# Watch update status for deployment “test”:
$ kubectl rollout status deploy/test

# Pause deployment on “test”:
$ kubectl rollout pause deploy/test

# Resume deployment on “test”:
$ kubectl rollout resume deploy/test

# View rollout history on “test”:
$ kubectl rollout history deploy/test

# Undo most recent update on “test”:
$ kubectl rollout undo deploy/test

# Rollback to specific revision on “test”:
kubectl rollout undo deploy/test --to-revision=1
```
### Rolling update 
```yaml
spec:
  replicas: 3
  strategy:
    type: RollingUpdate
    rollingUpdate:
      maxSurge: 25%       # how many pods we can add at a time 
      maxUnavailable: 25%  # how many pods can go down at a time
```

### Recreate 
```yaml
spec:
  replicas: 3
  strategy:
    type: Recreate  # all old pods will down at a time and new pods created
```