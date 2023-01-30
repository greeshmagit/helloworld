FROM python:alpine3.10 as builder
WORKDIR /usr/src/app
COPY helloworld.py ./
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
COPY . .
CMD ["python","./helloworld.py"]

FROM tomcat:9 as runtime
LABEL app=pythontest
COPY --from=builder . /usr/local/tomcat/webapps


 
