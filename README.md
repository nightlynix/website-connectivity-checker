# website-connectivity-checker

A lightweight Python CLI tool to verify the status of multiple websites. Developed as a first project transitioning from C++ (Competitive Programming background) to Python.

## Features
- **Fast Status Checks**: Uses the `requests` library to fetch HTTP status codes.
- **CLI Support**: Accept multiple URLs as command-line arguments.
- **Colorful Output**: ANSI color coding for better readability in the terminal.
- **Error Handling**: Gracefully handles timeouts and connection errors (DNS, OFFLINE status).
- **User-Agent Spoofing**: Mimics a real browser to avoid being blocked by basic bot protection.

## Requirements
- Python 3.x
- `requests` library

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/nightlynix/website-connectivity-checker.git
  
instal dependencies:
```bash
pip install requests
```
USAGE:
Usage
You can run the script with specific URLs as arguments:

python main.py google.com github.com twitter.com

If no arguments are provided, the script checks a default list of popular sites:
"github.com","google.com","twitter.com","facebook.com"


| URL                        | Status  |
|----------------------------|---------|
| google.com                 | 200     |
| non-existent-site-123.com  | OFFLINE |

Why this project?
This is a "hello world" project in Python to understand:

- Pythonic syntax and indentation.

- Handling external libraries and virtual environments.

- CLI argument parsing with sys.argv.

- Exception handling in network-based applications.
