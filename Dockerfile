FROM python:alpine3.9
WORKDIR /app
COPY . /app
RUN pip3 install --upgrade pip --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
EXPOSE 5000
