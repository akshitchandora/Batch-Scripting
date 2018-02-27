@echo off
REM @AkshitChandora
REM Batch Script to easily invoke the pip install/ uninstall function.
REM Only For Python Version 3 
 
:start
cls
echo.
echo ____________________________________________________________
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo                       Select Menu
echo ------------------------------------------------------------
echo 1. Display python modules being installed using pip function
echo 2. Pip Installation (individual files)
echo 3. Pip Uninstall
echo 4. Exit
echo ============================================================
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

 
set /p x=Select:
IF '%x%' == '1' GOTO Sel_1
IF '%x%' == '2' GOTO Sel_2
IF '%x%' == '3' GOTO Sel_3
IF '%x%' == '4' exit
GOTO start
 
:Sel_1
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo ____________________________________________________________
echo ************************************************************
echo                      Installed Modules
echo ------------------------------------------------------------
pip freeze
echo ============================================================
echo ************************************************************
pause
GOTO start
 
:Sel_2
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo ____________________________________________________________
echo ************************************************************
echo              Enter A Filename To Start Install
echo ------------------------------------------------------------
set INPUT=
set /P INPUT=Type input:%=%
pip install %INPUT%
echo =============================================================
pause
GOTO start
 
:Sel_3
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo ____________________________________________________________
echo ************************************************************
echo               Enter A Filename To Start Uninstall
echo ------------------------------------------------------------
set INPUT=
set /P INPUT=Type input:%=%
pip uninstall %INPUT%
echo ============================================================
pause
GOTO start
