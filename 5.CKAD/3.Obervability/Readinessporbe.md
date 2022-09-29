# Readiness
# it is used to check our pod mean our web server or data server is giving response or they are not able to response to the customers.

# 1. httpGet
## it is mostly used for web server testing
## in the containers sction
```bash
readinessProbe:
   httpGet:
     path: /api/ready
     port: 8080
```
# 2. tcp socket
## it  is used for testing database server
```bash
readinessProbe:
  tcpSocket:
  - port: 3306
```
# 3. exec    
## it is used run specific command to test the server
```bash
readinessProbe:
  exec:
    command:
    - cat
    - /app/is_ready.sh
```
# some other key values
## intialDelaySeconds
## failureThreshold
## periodSeconds




