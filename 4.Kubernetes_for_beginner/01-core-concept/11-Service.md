# Service

A Kubernetes service is **a logical abstraction for a deployed group of pods in a cluster** (which all perform the same function). Since pods are ephemeral, a service enables a group of pods, which provide specific functions (web services, image processing, etc.) to be assigned a name and unique IP address (clusterIP)

- Three types of services ClusterIP, NodePort, 

  

- ### NodePort

  - NodePort range is 3000-32767
  - port is the port of service 
  - targerPort is the port of container
  - NodePort is the external port for normal user

- ### ClusterIP

```bash
# how see list of services
$ kubectl get service
$ kubectl get svc

```



```yaml
kind: Service
apiVersion: v1
metadata:
  name: web-svc
spec:
  type: NodePort
  ports:
  - targetPort: 80
    port: 80
    nodePort: 31032
  selector:
    app: myapp  
```

