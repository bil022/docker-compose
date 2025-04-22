from flask import Flask, jsonify

app = Flask(__name__)

counter = 0

@app.route("/")
def hello():
    global counter 
    counter += 1
    return jsonify(message="Hello from server "+str(counter))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5050)


