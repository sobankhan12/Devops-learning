# i have flask base application and i want make container of it
```bash
FROM ubuntu
RUN apt-get update
RUM apt-get install -y python python-pip
RUN pip install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py run --host=0.0.0.0
```
# Second example of flask base application
```
FROM python:3.6

RUN pip install flask

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

ENTRYPOINT ["python", "app.py"]
```
## How to create docker image of this Dockerfile
```bash
$ docker build -t soban252/flask-simple-app .
```
