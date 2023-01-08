from flask import Flask
helloworld = Flask(__name__)
@helloworld.route("/")
def run():
  return "Hello World"
if __name__ == "__main__":
    helloworld.run(host="3.110.77.151", port=int("8081"), debug=True)
   # helloworld.run()
