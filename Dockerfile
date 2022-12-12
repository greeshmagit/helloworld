FROM python
WORKDIR /usr/src/app
COPY helloworld.py ./
#RUN pip install --no-cache-dir -r helloworld.py
COPY . .
CMD ["python","./helloworld.py"]

FROM tomcat:9
LABEL app=pythontest
COPY welpython/helloworld.py /usr/local/tomcat/webapps/helloworld.py
