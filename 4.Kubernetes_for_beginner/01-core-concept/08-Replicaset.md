# ReplicaSets

- it is controller that monitors pods if any pod goes down or not responding it will destroy that pod and create a new replica in the same namespace

- it is advanced version of Replication Controller and it make it easy to track all pods that are created early before replicaSet 

- it has precision to group pods 

  ```bash
  # how to create a replicaset through file
  $ kubectl apply -f rs.yaml
  # to see numbers of replicaset
  $ kubectl get replicaset 
  $ kubectl get rs
  # how to see rs in detail
  $ kubectl get rs -o wide
  # how to scale replicas without file changing or edit rs
  $ kubectl scale --replicas=3 rs web-rs 
  $ kubectl scale --replicas=6 -f rs.yaml
  # how to delete replicaset
  $ kubectl delete rs web-rs
  
- example of replicaset 
  
  ```

```yaml
kind: ReplicaSet
apiVersion: apps/v1
metadata:
  name: web-rs
  labels:
    type: frontend
spec:
  replicas: 6 
  selector:
    matchLabels:
      type: frontend
  template:
    metadata:
      name: webapp
      labels:
        type: frontend
    spec:
      containers:
      - name: webapp
        image: nginx
```

