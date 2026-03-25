@echo off
SETLOCAL
echo ======================================================
echo   Food ^& Medicine Donation App - Local Starter
echo ======================================================
echo.

:: Check for Node.js
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed! 
    echo Please download and install it from: https://nodejs.org/
    echo.
    pause
    exit /b
)

echo [1/2] Installing dependencies...
echo This might take a minute depending on your internet speed.
call npm.cmd install

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Installation failed. 
    echo Please check your internet connection and try again.
    pause
    exit /b
)

echo.
echo [2/2] Starting the Local Server...
echo.
echo ======================================================
echo   SUCCESS! Your app is starting.
echo   Open your browser to: http://localhost:3000
echo ======================================================
echo.

call npm.cmd run dev

pause
