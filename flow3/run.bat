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
if not exist .env (
	echo Copying configuration file
	copy .env.example .env
) else (
	echo Skipping .env copying
)

echo Starting Flow3 automation tool...
python meomundep.py

pause
