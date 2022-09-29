# Terraform
- it is used to create a resources remotely or locally without going manual

- you can manage theses things with terraform

  - visibility=> you can see all configuration and setting by code
  - stability=> if something goes all setting and configuration are saved in git repository  can get back
  - scalability=> you can scale up and down infrastructure with code
  - security=> it provides security by giving template that will be used everywhere
  - audit=> terraform create resources and also keep the record of all real time infra in the state file.

- ### aws cli configure for resource creation

  - create security credential of iam user with permissions

  ```bash
  # configure access key and secret access key
  $ aws configure
  $ aws s3 ls
  # to see credentials
  $ cat $HOME/.aws/credentials
  ```

  - ##### terraform core five commands (workflow)

    - **init**
      - used to initialize working directory  containing terraform config files
      - this is the first command that is used for terraform 
      - download provider
    - **validate**
      - it check that configuration is validate by syntactically and internally consistent
    - **plan**
      - what are execution plan to meet the desired state 
      - how should be action taken
    - **apply**
      - apply changes to meet the desired state of infrastructure
    - **destroy**
      - used to destroy terraform managed infrastructure with destroy command
      - it will ask to reply yes

  ```bash
  $ terraform init
  $ terraform validate
  $ terraform plan
  $ terraform apply -auto-approve
  $ terraform destroy 
```
```

