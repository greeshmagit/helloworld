FROM python:alpine3.10
WORKDIR /usr/src/app
COPY helloworld.py ./
RUN pip install --no-cache-dir -r requirement.txt
COPY . .
CMD ["python","./helloworld.py"]

FROM tomcat:9
LABEL app=pythontest
COPY . /usr/local/tomcat/webapps
