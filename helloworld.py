import Flask
helloworld = Flask(_name_)
@helloworld.route("/")
def run():
  return "Hello World"
if _name_ == "_main_":
  helloworld.run(host="0.0.0.0", port=int("5000"), debug=True)
