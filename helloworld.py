from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello_world():
    return "Welcome to python"



'''
from flask import Flask
helloworld = Flask(__name__)
@helloworld.route("/")
def run():
  return "Hello World"
if __name__ == "__main__":
    helloworld.run(host="0.0.0.0", port=int("8081"), debug=True)
   # helloworld.run()
'''
