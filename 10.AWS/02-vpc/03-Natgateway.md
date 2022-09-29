# Nat Gateway

- Aws managed, Higher Bandwidth, no administration, high availability
- Nat gateway in public subnet
- Allow private subnet instance go to over internet
- can not be used in ec2 instance in the same subnet where both Nat gateway and ec2 instance
- **Must use elastic IP**
- Maximum bandwidth of **5gb and it can upto 45gb**
- No security group needed for it

# Nat gateway for high availability

- Nat gateway is resilient in a single subnet

- Must create multiple Nat gateway for fault tolerance

- There is no need for **cross-zone failover** because one subnet goes down no need Nat gateway

   