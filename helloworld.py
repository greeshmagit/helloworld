import Flask
helloworld = Flask(_name_)
@helloworld.route("/")
def run():
  return "Hello World"
if _name_ == "_main_":
  helloworld.run(host="13.233.44.131", port=int("8081"), debug=True)
