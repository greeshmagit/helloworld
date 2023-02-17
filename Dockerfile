FROM python:alpine3.10 as builder
WORKDIR /app
COPY helloworld.py ./
COPY requirements.txt ./
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
ENTRYPOINT "python3"
CMD ["./helloworld.py"]
COPY . .


FROM ubuntu:22.04 as runtime
COPY --from=builder . /opt/helloworld


 
