FROM python:3
WORKDIR /usr/src/app
COPY helloworld.py ./
#RUN pip install --no-cache-dir -r helloworld.py
RUN pip install -r helloworld.py
COPY . .
CMD ["python","./helloworld.py"]

