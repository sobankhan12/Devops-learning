# setful state 
## it is used to assign a unique name of any pod that should not be change so for that you use setful state like for replication mysql databases
## if aplication needs a static name of come up in a sequential order so for that you use setful state
```
kind: SetfulSet
apiVersion: apps/v1
metadata:
  name: nginx
spec:
  replicas: 3
  serviceName: soban
  selector:
    matchLabes:
      app: soban
  templates:
    metadata:
      labels:
        app: soban
    spec:
      containers:
      - name: nginx
        image: nginx:lates
        ports:
        - containerPort: 80