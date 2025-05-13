#!/bin/bash

echo "Installing required packages..."
pip install colorama pyfiglet requests python-dotenv pyjwt

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


echo "Starting Flow3 automation tool..."
python3 meomundep.py
