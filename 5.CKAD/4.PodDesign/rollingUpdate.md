# Rolling Update
## it is used to record or the status of deployment
```bash
$ kubectl rollout history  "deployment name"
# histoy of deployment
$ kubectl set image deployment "deploy name" --image=nginx:1.7 --record
# to undo previous version
$ kubectl rollout undo deployment  "deploy name" --revision=1
