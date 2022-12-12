FROM python:3
ADD . /python-flask
WORKDIR /usr/src/app
COPY helloworld.py ./
RUN pip install --no-cache-dir -r helloworld.py
COPY . .
CMD ["python","./helloworld.py"]

