FROM python:alpine3.9
WORKDIR /app
COPY . /app
RUN pip3 install --upgrade pip --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

