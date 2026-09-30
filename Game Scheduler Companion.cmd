@echo off
REM Game Scheduler Companion - double-click to start.
REM
REM Opens the club's Game Scheduler - which runs on the club's MAIN
REM computer - in its own window on this computer, using the Microsoft Edge
REM (or Google Chrome) already installed here. The first time, it asks for
REM the main computer's name (connect.html, next to this file); after that
REM it goes straight to the Check-in page.
REM
REM That is everything this does. There is no program to install, no
REM database, and no copy of the club's data on this computer.
REM
REM   "Game Scheduler Companion.cmd"            start (asks the first time)
REM   "Game Scheduler Companion.cmd" CLUB-PC    connect to CLUB-PC and remember it
REM   "Game Scheduler Companion.cmd" /setup     ask for the main computer again
setlocal

set "BROWSER=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if not exist "%BROWSER%" set "BROWSER=%LocalAppData%\Microsoft\Edge\Application\msedge.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%BROWSER%" set "BROWSER=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%BROWSER%" set "BROWSER=%LocalAppData%\Google\Chrome\Application\chrome.exe"

REM No Edge or Chrome: say so, and how to get in with any other browser.
if not exist "%BROWSER%" echo Game Scheduler Companion needs Microsoft Edge or Google Chrome, and
if not exist "%BROWSER%" echo neither was found on this computer.
if not exist "%BROWSER%" echo.
if not exist "%BROWSER%" echo You can still use Game Scheduler from here: open any web browser and go
if not exist "%BROWSER%" echo to   http://MAIN-COMPUTER-NAME:4000   - the name is shown on the main
if not exist "%BROWSER%" echo computer under Settings, Club details, Other computers.
if not exist "%BROWSER%" echo.
if not exist "%BROWSER%" pause
if not exist "%BROWSER%" exit /b 1

REM The connect page, as a file:// address (backslashes become slashes).
set "HERE=%~dp0"
set "PAGE=file:///%HERE:\=/%connect.html"
if /i "%~1"=="/setup" set "PAGE=%PAGE%#setup"
if /i not "%~1"=="/setup" if not "%~1"=="" set "PAGE=%PAGE%#host=%~1"

REM Its own browser profile, so it opens as a separate app window and keeps
REM the remembered computer name apart from your everyday browsing.
set "PROFILE=%LocalAppData%\GameSchedulerCompanion\profile"

start "" "%BROWSER%" --app="%PAGE%" --user-data-dir="%PROFILE%" --window-size=1280,800 --no-first-run --no-default-browser-check --disable-sync --disable-features=msImplicitSignin,msSyncPromo
