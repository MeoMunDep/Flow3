@echo off
echo Installing required packages...
pip install colorama pyfiglet requests python-dotenv pyjwt

echo Creating requirements.txt file...
echo colorama>requirements.txt
echo pyfiglet>>requirements.txt
echo requests>>requirements.txt
echo python-dotenv>>requirements.txt
echo pyjwt>>requirements.txt

echo Checking for tokens.txt file...
if not exist tokens.txt (
    echo WARNING: tokens.txt file not found!
    echo Please create a tokens.txt file with one Flow3 token per line.
    echo Press any key to continue anyway...
    pause >nul
)

echo Setting environment variables...
set MAX_THREADS=10
set SLEEP_TIME=2
set TIMEOUT=10
set SKIP_ERROR_PROXIES=False

echo Starting Flow3 automation tool...
python meomundep.py

pause
