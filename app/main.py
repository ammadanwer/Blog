from flask import Flask, request, render_template, redirect, flash, url_for, session

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('base.html', current_page='Home')


@app.route('/categories')
def categories():
    return render_template('base.html', current_page='Categories')


@app.route('/popular')
def popular():
    return render_template('base.html', current_page='Popular')


@app.route('/archives')
def archives():
    return render_template('base.html', current_page='Archives')


@app.route('/about')
def about():
    return render_template('base.html', current_page='About')


if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000, debug=True)
