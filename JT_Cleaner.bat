@echo off
title JT_Cleaner
color e 
mode 120,50
:home
echo.
echo ///////////////////////////////////////////////
echo ----------- Starting JT_Cleaner ---------------
echo ------------------ Please ---------------------
echo ..... Wait a moment and select the option......
echo /////////////////////////////////////////////// 
echo.
echo ###############################################
echo ====  1. Clean
echo ====  2. Exit
echo ###############################################
echo.
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo ************* If this does not work ************
echo ********** Please run as administrator**********
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
set /p menu=Option=

if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2

:op1 
cls 
echo.
net stop wuauserv 
cd %Windir%
cd SoftwareDistribution 
del /f/s/q Download 
net start wuauserv
pause>nul 
cls
goto home

:op2
cls&exit

