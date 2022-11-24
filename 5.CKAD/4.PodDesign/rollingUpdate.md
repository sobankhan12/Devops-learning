# Rolling Update
## it is used to record or the status of deployment
```bash
# history of deployment
$ kubectl rollout history  "deployment name"
# update deployment with new image
$ kubectl set image deployment "deploy name" --image=nginx:1.7 
# to undo previous version
$ kubectl rollout undo deployment  "deploy name" --revision=1
# to see image which is used by deploy
$ kubectl describe deploy frontend | grep -i image
