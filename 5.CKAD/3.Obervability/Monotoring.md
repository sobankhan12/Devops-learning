# MONETORING
## it is used to see used of cpu and memory of each disk
```bash
$ kubectl top node
```
## first download
```bash
$ https://github.com/kodekloudhub/kubernetes-metrics-server.git
$ cd kubernetes-metrics-server 
$ kubectl create -f .
# which node is taking more cpu and ram
$ kubectl top node
# which pod is using more cpu nad ram
$ kubectl top pod
