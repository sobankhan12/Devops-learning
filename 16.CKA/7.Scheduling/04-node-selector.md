# Node selector
- it is used to tell pod to placed on that node
- we labeled our nodes and use this label in pod spec
- you can not make compled decision using node selector like size should **large or medium and not be small**
```bash
$ kubectl label node nod01 size=Large
```
```yaml
kind: Pod
apiVersion: v1
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx
  nodeSelector:
    size: Large
```


