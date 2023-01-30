FROM python:alpine3.10 as builder
WORKDIR /usr/src/app
COPY helloworld.py ./
COPY requirements.txt ./
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
COPY . .
CMD ["python","./helloworld.py"]

FROM tomcat:9 as runtime
LABEL app=pythontest
COPY --from=builder . /tomcat


 
