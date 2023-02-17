FROM python:alpine3.10 
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
