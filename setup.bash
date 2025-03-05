#!/bin/bash

# Create the main project directory and a documentation folder
mkdir -p app
mkdir -p docs
touch README.md

# Initialize a Git repository for version control
git init
git branch -M main  # Set the default branch to 'main'

# Create a .gitignore file to exclude unnecessary files from version control
cat <<EOL > .gitignore
__pycache__/
app/my_secret.py
venv/
/docs/ThingsToRemember.md

EOL

# Move into the 'app' directory where the application will live
cd app

# Create a Python virtual environment to isolate project dependencies
python -m venv venv

# Activate the virtual environment (platform-specific)
if [ "$(uname)" == "Darwin" ] || [ "$(uname)" == "Linux" ]; then
    source venv/bin/activate  # For macOS/Linux
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
    source venv/Scripts/activate  # For Windows
fi

# Create essential subdirectories for static files (CSS, images, JS), templates, and a database
mkdir -p db static/css static/img static/js templates

# Create a basic CSS reset in the styles.css file to ensure consistent styling across browsers
cat <<EOL > static/css/styles.css
/* Reset all margins and paddings */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
EOL

# Create an empty script.js file for future JavaScript code
touch static/js/script.js

# Create the base HTML structure in templates/base.html to be inherited by other pages
cat <<EOL > templates/base.html
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ url_for('static', filename='css/styles.css') }}">
    <script src="{{ url_for('static', filename='js/script.js') }}"></script>
    {% block head %}{% endblock %}
</head>
<body>
{% block body %}{% endblock %}
</body>
</html>
EOL

# Create a basic home page template that extends the base HTML template (empty for now)
cat <<EOL > templates/home.html
{% extends 'base.html' %}

{% block head %}
<title> </title>
{% endblock %}

{% block body %}

{% endblock %}
EOL

# Create the signin.html content (empty for now, to be customized later)
cat <<EOL > templates/signin.html
{% extends 'base.html' %}

{% block head %}
<title> </title>
{% endblock %}

{% block body %}

{% endblock %}
EOL

# Create the signup.html content (empty for now, to be customized later)
cat <<EOL > templates/signup.html
{% extends 'base.html' %}

{% block head %}
<title> </title>
{% endblock %}

{% block body %}

{% endblock %}
EOL

# Create Python files in 'app' root
touch app.py my_secret.py

# Install Flask into the virtual environment
pip install flask

# Write the basic Flask app setup into app.py
cat <<EOL > app.py
from flask import Flask, request, jsonify, render_template, redirect, url_for, flash, session

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('home.html')

if __name__ == '__main__':
    app.run(debug=True)
EOL

cd ..
cd docs
cat <<EOL > ThingsToRemember.md
# Things to Remember
## When pusing to GitHub
git remote add origin https://github.com/HenrikHaalandDev/"name of repo".git
git commit -m "Adding of needed folders"
git branch -M main
git push -u origin main
EOL

cd ..

# Confirm that the folder structure, files, and virtual environment were created successfully
echo "Folder structure, files, and virtual environment have been created."
