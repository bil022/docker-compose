from flask import Flask, jsonify
import requests

app = Flask(__name__)

counter = 0

@app.route("/")
def hello():
    global counter 
    counter += 1
    response = requests.get('https://official-joke-api.appspot.com/random_joke')
    joke = response.json()
    msg=f": {joke['setup']} — {joke['punchline']}"
    return jsonify(message="Server "+str(counter)+msg)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5050)


