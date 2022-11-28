# Kube Controller manager

- that monitor the health and status of nodes, pods and replicas

- #### Node Controller

  - it check node if not response it set status not ready yet
  - Node monitor period is **5s** 
  - Node monitor grace period **40s**
  - Pod eviction timeout **5m** and after that it removes container from that unhealthy node and deploy pods on healthy one node
- ### Replication Controller
  - it monitor replicas and check desire number of pods running all time
  