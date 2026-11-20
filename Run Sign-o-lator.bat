@echo off
setlocal
cd /d "%~dp0"

set "PYTHON=%~dp0.venv\Scripts\python.exe"
if not exist "%PYTHON%" (
    echo Python 3.13 environment not found.
    echo Create it and install dependencies with:
    echo py -3.13 -m venv .venv
    echo .venv\Scripts\python.exe -m pip install -r requirements.txt
    pause
    exit /b 1
)

"%PYTHON%" "%~dp0Sign-o-lator.py"
set "APP_EXIT_CODE=%ERRORLEVEL%"
if not "%APP_EXIT_CODE%"=="0" (
    echo.
    echo Sign-o-Lator exited with code %APP_EXIT_CODE%.
    pause
)
exit /b %APP_EXIT_CODE%
