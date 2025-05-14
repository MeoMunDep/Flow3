@echo off
echo Installing required packages...
pip install colorama pyfiglet requests python-dotenv pyjwt pycryptodome

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
if not exist .env echo .env created & (
    echo MAX_THREADS=10
    echo SLEEP_TIME=2
    echo DEFAULT_WALLETS=100
    echo TIMEOUT=10
    echo SKIP_ERROR_PROXIES=False
) > .env


echo Starting Flow3 automation tool...
python meomundep.py

pause
