FROM python
WORKDIR /usr/src/app
COPY helloworld.py ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r helloworld.py
COPY . .
CMD ["python","./helloworld.py"]

