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
color 02
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
echo Checking for wireless interface...
netsh wlan show profiles | findstr /R /C:"[ ]:[ ]"
if %errorlevel%==1 (
    goto fail3
) else (
    cls
    netsh wlan show profiles | findstr /R /C:"[ ]:[ ]" > temp.txt
    echo Available SSID in this Machine
    type temp.txt

    echo Creating helper file...
    (
        echo @echo off
        echo setlocal enabledelayedexpansion
        echo for /f "tokens=5*" %%i in (temp.txt) do (
        echo     set val=%%i %%j
        echo     if "%%j" == " " set val=!val:~0,-1!
        echo     echo !val! >> final_output.txt
        echo     for /f "tokens=*" %%k in (final_output.txt) do (
        echo         echo SSID: %%k >> credentials.txt
        echo         echo. >> credentials.txt
        echo         echo Key content is the password of your target SSID. >> credentials.txt
        echo     )
        echo )
        echo del /q temp.txt final_output.txt
        echo exit
    ) > helper.bat

    echo Done...
    echo Extracting passwords and saving it...
    ping localhost -n 3 > null
    start helper.bat
    echo Done...
    echo Deleting temporary files...
    ping localhost -n 3 > null
    del /q helper.bat
    echo Done...
    del null
    ping localhost -n 2 > null
    cls
    echo WiFi credentials have been saved to "credentials.txt"
    echo Press any key to continue...
    pause > null
    goto main
)


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
