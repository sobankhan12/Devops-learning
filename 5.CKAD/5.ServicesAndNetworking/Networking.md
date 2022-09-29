# Networking
## it is used to applly no one person access our database service or pod so for that we declare networking policy like db server get or ingress on port  30080 from api-pod 
## expample
```bash
kind: NetworkingPolicy
apiVersion: netwoking.k8s.io/v1
metadata:
  name: db-network
spec:
  podSelector:
    matchLables:
      role: db
  policyTypes:
  - ingress
  - egress
  ingress:
  - from:
    - podSelector:
        matchLables:
          name: api-pod
      namespaceSelector:
        matchLables:
          name: prod
    - ipBlock:
        cidr: 192.168.5.10/32
  
    ports:
    - protocol: TCP
    - port: 3306
  egress:
  - to:
    - ipBlock:
        cidr: 192.168.5.10/32
        
```
# ipBlock
## it is used for talk with backup server
# namespaceSelector
## it is used for slecting only prod namespace pods
# egress
## to outgoing traffic from a specific pods
# to get network policy
```bash
$ kubectl get networkpolicy
```
