CRONJOB
``bash

kind: Job
apiVersion: batch/v1
metadata:
  name: Jjob1
spec:
  completions: 3
  parallelism: 3
  template:
    metadata:
      labels:
        ap:te
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
      restartPolicy: never
```