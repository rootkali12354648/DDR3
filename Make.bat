title WiFi_Crack V2.0 Rootkali12354648
@echo off
cls
:main
color 3
echo.
echo  #====================#
echo  #  1.)WiFi-Crack     # - 1 Auto Run ++	
echo  #  2.)WiFi-Name.cap  # - 2 Name Run ++	
echo  #  3.)Exit           # - 3 Exit
echo  #====================#
echo.

set /p input="Enter you Key [Num]  : " 

if %input%==1 (
goto wifi 
)else if %input%==2 (
color 6
set /p File="Enter [.cap]  : " 
goto insa 
)else if %input%==3 (
exit
)else (
goto error
)

:wifi
cls
color 2
echo.
aircrack-ng Wifi/wifi.cap -w Password/Password.lst
ping localhost -n 1 >nul
echo  InFiled . . .  OK [Key %input%]
ping localhost -n 2 >nul
echo  Cracked . . .  OK [wifi.cap]
ping localhost -n 1 >nul
echo  SuckerS . . .  OK [password.lst]
ping localhost -n 1.5 >nul
color 3
pause
cls
goto main

:insa
cls
color a
echo.
aircrack-ng Wifi/%File% -w Password/Password.lst
ping localhost -n 1 >nul
echo  InFiled . . .  OK [Key %input%]
ping localhost -n 2 >nul
echo  Cracked . . .  OK [%File%]
ping localhost -n 1 >nul
echo  SuckerS . . .  OK [password.lst]
ping localhost -n 1.5 >nul
color 3
pause
cls
goto main

:error
echo Error Key . . .
echo.
ping localhost -n 2 >nul
cls
goto main