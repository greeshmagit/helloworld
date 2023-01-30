FROM python:alpine3.10 as builder
WORKDIR /usr/src/app
COPY helloworld.py ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python","./helloworld.py"]

FROM tomcat:9 as runtime
LABEL app=pythontest
COPY --from=builder . /usr/local/tomcat/webapps


 /*From openjdk:8-jdk-alpine as builder
   //RUN mkdir -p /webtest
   //COPY . /webtest
  // WORKDIR /webtest
   //RUN . /mvn clean package
   
   //From tomcat:alpine as runtime
   //COPY --from=builder /webtest/target/webtest.war /tomcat/webapps/webtest.war
   //EXPOSE 8080*/
