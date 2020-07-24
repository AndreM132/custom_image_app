from flask import Flask


app = Flask(__name__)

@app.route('/')
def function():
    return "<h3>Hello World! Deployed  </h3>"

if __name__ == '__main__':
    a[[.run(host='0.0.0.0', port=5000, debug=True)
