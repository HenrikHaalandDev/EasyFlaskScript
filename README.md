# Project Setup Script Overview

This Bash script automates the setup of a basic web application project using Flask. The script creates the essential project structure, sets up a Python virtual environment, and configures Git for version control. Additionally, it generates basic template files for HTML, CSS, and JavaScript to kick-start the project.

### How It Works

1. **Project Directory Creation:**
   - Creates the `app` and `docs` directories.
   - Creates an empty `README.md` file in the root directory.

2. **Git Setup:**
   - Initializes a Git repository (`git init`).
   - Sets the default branch to `main` using `git branch -M main`.
   - Creates a `.gitignore` file to exclude files such as Python cache files, virtual environments, and sensitive files like `my_secret.py`.

3. **Virtual Environment Setup:**
   - Creates a Python virtual environment using `python -m venv venv` in the `app` directory.
   - Automatically activates the virtual environment based on the operating system (macOS/Linux/Windows).

4. **Directory Structure:**
   - Creates subdirectories within `app` for organizing static files (CSS, images, JS), templates, and a `db` directory for database files.

5. **Basic Web Files Creation:**
   - Adds a CSS reset (`styles.css`) to ensure consistent styling across browsers.
   - Creates an empty `script.js` file for future JavaScript code.
   - Creates a base HTML structure (`base.html`) with placeholders for head and body content.
   - Creates additional template files (`home.html`, `signin.html`, `signup.html`) that extend the `base.html` template.

6. **Flask Setup:**
   - Creates a basic Flask application (`app.py`) with a single route (`/`) that renders the `home.html` template.
   - Installs Flask into the virtual environment using `pip install flask`.

7. **Documentation:**
   - Creates a `ThingsToRemember.md` file in the `docs` directory, including reminders for pushing the project to GitHub.

### Why It's Useful

- **Automation:** This script automates the initial setup process for a Flask project, saving time and ensuring consistency when creating a new project. You won't need to manually create directories, files, or configure Git each time you start a new project.
  
- **Version Control Setup:** The script initializes Git and creates a `.gitignore` file to exclude unnecessary files (e.g., Python cache files, virtual environments, and secrets), keeping the project repository clean and manageable.

- **Virtual Environment Isolation:** By automatically setting up and activating a virtual environment, the script ensures that the project dependencies are isolated, preventing conflicts with other Python projects on the system and ensuring consistency across different environments.

- **Basic Project Structure:** The script generates a basic, reusable project structure that includes essential files and directories (static files, templates, Flask app). It provides a consistent foundation for further development.

### How to Use

1. **Clone the repository** or copy this script into your local machine.
2. **Run the script** in the terminal by navigating to the directory where the script is saved and executing it:

   - **For macOS/Linux** (using Bash):
     ```bash
     bash setup.bash
     ```
   
   - **For Windows:**
     - If you're using **Windows Command Prompt (cmd)**, you'll need to run the script using **Windows Subsystem for Linux (WSL)** if you have it installed, or use a Bash-like terminal such as Git Bash. Open **Git Bash** and run:
       ```bash
       bash setup.bash
       ```
     - If you're using **PowerShell**, you can run the script using a similar approach with Git Bash or run Bash commands directly if you have WSL installed. For example:
       ```bash
       bash setup.bash
       ```
     - If you **don’t have WSL or Git Bash**, you'll need to manually set up directories and the virtual environment using native Windows commands (e.g., `mkdir`, `python -m venv venv`, etc.).

3. Once the script completes, you can start the Flask application by running:
   ```bash
   python app/app.py
   ```
4. The Flask app will be accessible at `http://127.0.0.1:5000/`.

---

This script is especially helpful for quickly starting new Flask projects, ensuring that the initial setup is consistent, efficient, and includes the basic components needed for development. Whether you're developing on macOS, Linux, or Windows, the script is designed to be cross-platform compatible.