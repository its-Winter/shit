@echo:off
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
cls
goto Start2

:Start8
cls
echo:Your 4 Digit PIN was successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start7
cls
echo:Your 5 6 Digit Random PINs were successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start6
cls
echo:Your Random 6 Digit PIN was successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start5
cls
echo:Your Random PIN was successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start4
cls
echo:Your 4 Digit PIN was successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start3
cls
echo:Your 5 4 Digit Random PINs were successfully generated to a text file!
echo:Press any key to make more...
pause >nul
goto Start2

:Start2
cls
goto Start

:Start
title PIN Generator V1.1
echo:This will generate a new PIN
echo:Please save the generated PIN somewhere in case you forget it.
echo:https://www.github.com/its-winter/randomcodes
echo:______________________________________________________________
echo:
echo:1) 1 Random PIN (0, 32767)
echo:2) 1 Random 4 Digit PIN 
echo:3) 5 Random 4 Digit PINs
echo:4) 1 Random 6 Digit PIN
echo:5) 5 Random 6 Digit PINs 
echo:6) Write Option 1 to text file
echo:7) Write Option 2 to text file
echo:8) Write Option 3 to text file
echo:9) Write Option 4 to text file
echo:10) Write Option 5 to text file
echo:11) Exit script
echo:How many pin(s) today?
set /p input= Option:
if %input%==1 goto A else goto Start2
if %input%==2 goto B else goto Start2
if %input%==3 goto C else goto Start2
if %input%==4 goto D else goto Start2
if %input%==5 goto E else goto Start2
if %input%==6 call :F > %userprofile%\Desktop\randompin.txt & goto Start5
if %input%==7 call :G > %userprofile%\Desktop\4digitpin.txt & goto Start8
if %input%==8 call :H > %userprofile%\Desktop\5random4digits.txt & goto Start3
if %input%==9 call :I > %userprofile%\Desktop\6digitpin.txt & goto Start6
if %input%==10 call :J > %userprofile%\Desktop\5random6digits.txt & goto Start7
if %input%==11 ( goto :exit
) else ( echo:Invalid Response
    goto :Start
)

:A
cls
echo:Your PIN is %random%
echo:_____________________
echo:
goto :again

:B
cls
echo:Your 4 Digit PIN is: 
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:___________________________________________________________________
echo:
goto :again

:C
cls
echo:Your 5 4 Digit PINs are:
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:________________________________________________________________________________________________________________________
echo:

:D
cls
echo:Your 6 Digit PIN is: 
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:___________________________________________________________________
echo:
goto :again

:E
cls
echo:Your 5 6 Digit PINs are:
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:________________________
echo:
goto :again


:F
cls
echo:Your PIN is %random%
exit /b

:G 
echo:Your 4 Digit PIN is: 
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
exit /b
 
:H
cls
echo:Your 5 4 Digit PINs are:
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
echo:
set /a num4 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num4%
exit /b

:I
cls
echo:Your 6 Digit PIN is: 
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
exit /b

:J
cls
echo:Your 5 6 Digit PINs are:
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
echo:
set /a num6 =%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%%random:~-1%
echo:%num6%
exit /b

:exit
echo:Are you sure you want to exit? (y / n)
set input=
set /p input=
if %input%==y exit
if %input%==n ( goto Start2
) else (
    echo:----------------------------------
    echo:Invalid Response
    goto :exit
)

:again
echo:1) Generate more
echo:2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2
if %input%==2 ( goto :exit
) else (
    echo:----------------------------------
    echo:Invalid Response
    goto :again
)