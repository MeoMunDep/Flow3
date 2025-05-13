# Flow3 Automation Tool

![Flow3 x MEOMUNDEP](https://img.shields.io/badge/Flow3-Automation-blue)

A tool to automate checking points and internet score for Flow3 accounts.

## 📋 Features

- Automatically refresh tokens and check account status
- Multi-threading support for handling multiple accounts simultaneously
- Proxy support for account protection
- Real-time display of points and internet score
- Colorful and informative console output

## 🚀 Getting Started

This tool helps you monitor your Flow3 accounts automatically. Follow these simple steps to get started:

### Prerequisites

- Python 3.7 or higher
- Required Python packages (automatically installed during setup)
- Flow3 account tokens
- Proxies (optional)

### Setup Instructions

#### 1. Download the files

Download all the files into a single folder:
- `main.py` (the main script)
- `run.bat` (for Windows users)
- `run.sh` (for Mac/Linux users)
- `requirements.txt` (contains required packages)

#### 2. Set up your tokens and proxies

Create two text files in the same folder:

1. `tokens.txt` - Each line should contain one Flow3 access token
2. `proxies.txt` (optional) - Each line should contain one proxy in the format `http://user:pass@host:port` or `http://host:port`

Example `tokens.txt`:
```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2Vyb...
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2Vya...
```

Example `proxies.txt`:
```
http://username:password@proxy1.example.com:8080
http://proxy2.example.com:8080
```

#### 3. Run the tool

**For Windows users:**
- Double-click on `run.bat`

**For Mac/Linux users:**
- Open terminal in the folder
- Make the script executable with: `chmod +x run.sh`
- Run with: `./run.sh`

## ⚙️ Configuration

You can configure the tool by editing the environment variables in the run scripts:

- `MAX_THREADS`: Maximum number of concurrent threads (default: 10)
- `SLEEP_TIME`: Time to wait between checks in seconds (default: 2)
- `TIMEOUT`: Request timeout in seconds (default: 10)
- `SKIP_ERROR_PROXIES`: Skip accounts with bad proxies (default: False)

## 📊 Understanding the Output

The tool provides a colorful console output with the following information:

- **Username**: Your Flow3 username for each account
- **Proxy**: The proxy being used (or "No proxy" if none)
- **Points**: The total points earned by your account
- **Internet score**: Your connection quality score 

## ❓ Troubleshooting

### Common Issues:

1. **"401 Unauthorized" message**:
   - Your token may be expired. Get a new token from Flow3 website.

2. **"Bad proxy" message**:
   - The proxy is not working. Try a different proxy or check its format.

3. **Script closes immediately**:
   - Make sure you have `tokens.txt` file with at least one valid token.
   - Check if Python is installed correctly.

4. **Python not found error**:
   - Install Python from [python.org](https://www.python.org/downloads/).
   - Make sure to check "Add Python to PATH" during installation.

## 📞 Support

For business inquiries: [https://t.me/meomundep](https://t.me/meomundep)

Support with your referral: [https://app.flow3.tech/sale-nodes?ref=rE3CLllmF2](https://app.flow3.tech/sale-nodes?ref=rE3CLllmF2)

## ⚠️ Disclaimer

This tool is meant for educational purposes only. Always comply with Flow3's terms of service. The developers are not responsible for any misuse of this software.
