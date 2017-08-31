from flask import Flask
application = Flask(__name__)

@application.route("/")
def hello():
    return "<h1>Demo via Nginx with uWSGI!</h1>"

if __name__ == "__main__":
    application.run(host='127.0.0.1', port=9001)
