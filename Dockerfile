FROM python:alpine3.10 as builder
WORKDIR /usr/src/app
COPY helloworld.py ./
COPY requirements.txt ./
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
CMD ["python3","./helloworld.py"]
COPY . .


#FROM tomcat:9 as runtime
#COPY --from=builder . /usr/local/tomcat/webapps


 
