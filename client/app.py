from flask import Flask, jsonify
import requests
import time
import json

server_url = "http://server:5050"

app = Flask(__name__)

@app.route("/")
def hello():
    response = requests.get(server_url)
    server_message = response.json()  # This is a dictionary

    # Convert the dictionary to a string using json.dumps()
    return jsonify(message="Client call server " + json.dumps(server_message))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

