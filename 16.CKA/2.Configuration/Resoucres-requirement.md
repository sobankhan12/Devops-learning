# Resourse Requirements
- it is used to give resouruce to one pod
- By default kubernetes request **0.5vcpu** and **256MIB** for container and maximum limit is **1vcpu** and **512MIB**
- You can set limit by yourself
- a container can not use more cpu than its limit but it **can consume** more memory than its limit
- if container consume more memory than its limit constantly pod will be **deleted**
### create default limit range object for containers
```yaml
---
apiVersion: v1
kind: LimitRange
metadata:
  name: mem-limit-range
spec:
  limits:
  - default:
      memory: 512Mi
    defaultRequest:
      memory: 256Mi
    type: Container
---
apiVersion: v1
kind: LimitRange
metadata:
  name: cpu-limit-range
spec:
  limits:
  - default:
      cpu: 1
    defaultRequest:
      cpu: 0.5
    type: Container
```


**how to use this limit range in containers**
```yaml
kind: Pod
apiVersion: v1
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    resources:
      limits:
        memory: 10Mi
      requests:
        memory: 5Mi
        cpu: 1
```