#!/bin/bash

echo "Installing required packages..."
pip install colorama pyfiglet requests python-dotenv pyjwt pycryptodome

echo "Creating requirements.txt file..."
echo "colorama" > requirements.txt
echo "pyfiglet" >> requirements.txt
echo "requests" >> requirements.txt
echo "python-dotenv" >> requirements.txt
echo "pyjwt" >> requirements.txt

echo "Checking for tokens.txt file..."
if [ ! -f "tokens.txt" ]; then
    echo "WARNING: tokens.txt file not found!"
    echo "Please create a tokens.txt file with one Flow3 token per line."
    echo "Press Enter to continue anyway..."
    read
fi

echo "Setting environment variables..."
[ -f .env ] || {
  cat <<EOL > .env
MAX_THREADS=10
SLEEP_TIME=2
DEFAULT_WALLETS=100
TIMEOUT=10
SKIP_ERROR_PROXIES=False
EOL
  echo ".env created"
}

echo "Starting Flow3 automation tool..."
python3 meomundep.py
