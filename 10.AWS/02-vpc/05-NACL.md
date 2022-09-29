# NACL

- network acl are firewall rules that control to and from traffic on the subnet level
- one NACL per subnet
- NACL stateless (**if you allow inbound port and it will not allow out going port**)
- Default NACL are allow inbound and outbound rule 

## NACL RULES

- rules is range between (1-32766)
- rules must be gap between 100
- less number range will get override highest rule number
- last rule is * be deny rule for all 

## Ephemeral Ports

-  any connection established between two client and server it is need
- on client side ephemeral port is open to expect response back from server

## Security Groups

- it work on the instance level and live on the ec2 instance
- it is stateful**(if you allow inbound rule automatically outbound rule will also be open)**
- 