# AWS end Point(aws-private link)

- AWS private link allow you to connect with aws services with private link without exposing to public internet
- They are redundant and scale horizontally
- no need of internet gateway, NAT gateway

## TYPES OF AWS end point

- ### Interface Endpoint

  - provision an **ENI(private ip)** as an entry point(must attach security group)
  - it work most of the aws services

- ### Gateway Endpoint

  - Provision a gateway and must be used as target in route table
  - **only support s3 and DynamoDB**