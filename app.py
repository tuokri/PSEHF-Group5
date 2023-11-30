from flask import Flask
from flask import render_template
from flask_bootstrap import Bootstrap5

app = Flask(__name__, template_folder="templates")

bootstrap = Bootstrap5(app)


@app.route("/")
def index():
    return render_template("index.jinja")
