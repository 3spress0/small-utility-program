@echo off
 net session >null 2>&1
    if %errorLevel% == 0 (
        goto adminyes
    ) else (
        goto adminno
    )
    
    pause >null
    

:adminno
color 3
cls
echo # X============X
echo # [  Warning!  ]
Echo # X============X
Echo #
echo # no admin permission, for a fully working program start this program with administrator rights.
echo #
echo # press any key to boot up...
set adminstate=non-admin
pause >null
goto :check

:adminyes
set adminstate=admin
goto check

:check
cls
echo Espresso_Hackdesk_Modmenu
echo.
echo [--------------------------------------]
echo [               Main Menu              ]
echo [--------------------------------------]
echo.
echo # Please choose from the following options:
echo.
echo # 1. Mess up PC (multiple choice)
echo # 2. Retrieve network password (local)
echo # 2.1 Network choices
echo # 3. User management
echo # 4. "Godmode" folder
echo # e. Exit
echo.

set choice=
set /p choice=Enter your choice: 

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="2.1" goto option2_1
if "%choice%"=="3" goto option3
if "%choice%"=="4" goto option4
if /i "%choice%"=="e" goto exit

echo Invalid choice. Please try again.
pause
goto menu

:option1
cls
echo You have chosen to Mess up PC (multiple choice).
echo Enter the functionality for this option here.
pause
goto menu

:option2
cls
echo You have chosen to Retrieve network password (local).
echo Enter the functionality for this option here.
pause
goto menu

:option2_1
cls
echo You have chosen Network choices.
echo Enter the functionality for this option here.
pause
goto menu

:option3
cls
echo You have chosen User management.
echo Enter the functionality for this option here.
pause
goto menu

:option4
cls
echo You have chosen "Godmode" folder.
echo Enter the functionality for this option here.
pause
goto menu

:exit
cls
echo Goodbye!
exit
