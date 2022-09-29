# Nat Instance

- Allow private subnet ec2 instance to go to internet
- it used to give facility to go to the internet via NAT instance to the private subnet instances
- It is older way
- NAT instance should in public subnet
- Must disabled Nat instance setting: source/destination check
- Must have elastic ip attached to it

- Route table must be 0.0.0.0/0 to Nat instance in private route table

# NAT Instance Comment

- pre-configured Nat instance is aws market place
- No high availability
- you must manage security groups 