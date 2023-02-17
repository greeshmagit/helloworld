FROM python:alpine3.10 
WORKDIR /app
COPY helloworld.py /app
COPY requirements.txt /app
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["./app/helloworld.py"]


#FROM ubuntu:22.04 as runtime
#COPY --from=builder /app/helloworld.py /opt/helloworld


#FROM python:alpine3.11 as builder 
#WORKDIR /usr/src/app
#COPY script.py /usr/src/app
#COPY requirements.txt /usr/src/app
#RUN  pip install --upgrade pip --no-cache-dir -r requirements.txt


#FROM tomcat as run
#LABEL app = login
#COPY . /usr/share/nginx/html/
#COPY --from=builder /usr/src/app/ /usr/share/nginx/html/
#CMD ["python","./script.py"]


 
