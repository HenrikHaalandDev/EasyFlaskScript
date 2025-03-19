# Flask Project Setup

This repository contains a Bash script that automates the setup of a Flask-based web application. The script creates the required project structure, sets up a virtual environment, initializes Git for version control, and installs necessary dependencies.

## Features
- **Automated Project Setup**: Quickly generate the essential directory and file structure.
- **Git Version Control**: Initializes a Git repository and sets up `.gitignore`.
- **Virtual Environment**: Creates and activates a Python virtual environment.
- **Flask Installation**: Installs Flask and required libraries.
- **Prebuilt Templates**: Includes base HTML, CSS, and JavaScript files for quick development.
- **User Authentication**: Supports login, registration, and user management using Flask-Login and Flask-Bcrypt.

## Project Structure
```
/your-project
│-- /app
│   │-- /db                # SQLite database storage
│   │-- /static            # Static files (CSS, JS, images)
│   │   │-- /css
│   │   │-- /img
│   │   │-- /js
│   │-- /templates         # HTML templates
│   │-- app.py             # Main Flask app
│   │-- my_secret.py       # Stores secret keys (excluded from Git)
│   │-- modules.py         # Database and user authentication logic
│-- /docs
│   │-- ThingsToRemember.md
│-- .gitignore
│-- README.md
│-- setup.sh               # Bash script to automate setup
```

## Installation & Setup
### 1. Clone the Repository
```bash
git clone https://github.com/HenrikHaalandDev/your-repo-name.git
cd your-repo-name
```

### 2. Run the Setup Script
Execute the setup script to initialize the project:
```bash
bash setup.sh
```

### 3. Activate the Virtual Environment
```bash
# macOS/Linux:
source app/venv/bin/activate

# Windows:
source app/venv/Scripts/activate
```

### 4. Initialize the Database
```bash
python app/modules.py
```

### 5. Run the Flask Application
```bash
python app/app.py
```

## Usage
- **Login/Register**: Supports user authentication.
- **Dashboard**: Protected route requiring login.
- **Git Workflow**:
  ```bash
  git add .
  git commit -m "Initial commit"
  git push origin main
  ```

## Next Steps
- Implement additional features like user roles and permissions.
- Add API endpoints for future integration.
- Improve UI with a frontend framework.

## Notes
- Ensure you update `my_secret.py` with a secure secret key.
- Always run `modules.py` before `app.py` to ensure the database is initialized.

🚀 **Happy coding!**

