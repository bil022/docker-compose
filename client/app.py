from flask import Flask, jsonify
import requests
import time
import json
import os
import socket
server_host = os.getenv("SERVER_HOST", "localhost")
ip = socket.gethostbyname(server_host)
server_port = os.getenv("SERVER_PORT", "5050")
server_url = f"http://{ip}:{server_port}"

app = Flask(__name__)

@app.route("/")
def hello():
    response = requests.get(server_url)
    server_message = response.json()  # This is a dictionary

    joke = requests.get('https://official-joke-api.appspot.com/random_joke').json()
    msg=f": {joke['setup']} — {joke['punchline']}"

    # Convert the dictionary to a string using json.dumps()
    return jsonify(message=f"Client say: ${msg}.\nServer @${server_url} say: "  + json.dumps(server_message))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

