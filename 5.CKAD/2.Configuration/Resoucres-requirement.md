# Resourse REQUIREMENTS
# IT IS USED TO GIVE RESOURCES FOR ONE POD 
BY DEFUALT IT ALLOCATES 1VCU AND 512MIB AND YOU CAN ADJUST BY YOURSELF AND SET A LIMIT FOR IT
EXAMPLE
```bash
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