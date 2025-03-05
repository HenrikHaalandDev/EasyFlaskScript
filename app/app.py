from flask import Flask, request, jsonify, render_template, redirect, url_for, flash, session

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('home.html')

if __name__ == '__main__':
    app.run(debug=True)
