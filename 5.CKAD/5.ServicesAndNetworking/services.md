# Services
## these are used to access our web application from outside of cluster
## these are three types
## 1. cluster ip it is used to communicated other other services within cluster
## 2. NodePort it is used to access web app from outside
## 3. LoadBlancer it is used to access web app in a cloud base cluster
```bash
kind: Service
apiVersion: v1
metadata:
  name: webapp-service
spec:
  type: NodePort
  ports:
  - targetPort: 8080
    port: 8080
    nodePort: 30080
  selector:
    name: simple-webapp
    
```