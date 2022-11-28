# Entry point and Args in kubernetes

## ENTRYPOINT 
- it is the startup command that is used in Dockerfile


### CMD
- it is the default parameter passed to the command that is actually entrypoint




### ARGS
- it is used in pod defination file
- it override instruction of **CMD** in Dockerfile


### Command
- it is used in pod defination file
- it override the entrypoint that is define in **Dockerfile**

### Example of Dockekrfile
```Dockerfile
FROM ubuntu
ENTRYPOINT ["sleep"]
CMD ["10"]
```

### How to override the entrypoint and cmd of Dockerfile in pod defination
```yaml
spec:
  containers:
  - name: ubuntu-sleeper
    image: ubuntu
    command: ["sleep-2.0"]
    args: ["50"]
```
**second way**
```yaml
spec:
  containers:
  - name: ubuntu-sleeper
    image: ubuntu
    command:
    - "sleep-2.0"
    - "50"
```

