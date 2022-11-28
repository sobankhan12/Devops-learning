# NODE AFFINITY
- IT IS USED TO LABELING POD THAT WHERE THIS POD RUN ON THE SPACIFIC NODE
- it is nore advanced option of node selector with more features
- Threee options are used in node affinity
  - Exists  
  - NotIn
  - In
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: with-node-affinity
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchExpressions:
          - key: topology.kubernetes.io/zone
            operator: In
            values:
            - antarctica-east1
            - antarctica-west1
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 1
        preference:
          matchExpressions:
          - key: another-node-label-key
            operator: In
            values:
            - another-node-label-value
  containers:
  - name: with-node-affinity
    image: nginx

```
### Exists
- when you used this operator then you do not need value like

```yaml
        nodeSelectorTerms:
        - matchExpressions:
          - key: app
            operator: Exists
```
### In
- when you used this operator to schedule pod on this specifc nodes
```yaml

        nodeSelectorTerms:
        - matchExpressions:
          - key: topology.kubernetes.io/zone
            operator: In
            values:
            - antarctica-east1
            - antarctica-west1
```
### requiredDuringSchedulingIgnoredDuringExecution:
- it will find node with exact node label otherwise pod will not be schedule
- if label of node is changed during pod running that pod will be not be terminated from this node
- it is best if node is important then workload itself
### prefferedDuringSchedulingIgnoredDuringExecution:
- it will find node with exact node label and if not found  but pod will  be schedule
- if workload is itself important rather than node then use **prefferred**





