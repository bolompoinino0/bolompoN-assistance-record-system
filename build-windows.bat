@echo off
setlocal EnableExtensions
cd /d "%~dp0"

echo ================================================
echo  Assistance Record System - Windows EXE Builder
echo ================================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js is not installed.
  echo Install Node.js 22.12 or newer, restart Windows, and run this file again.
  echo.
  pause
  exit /b 1
)

for /f "tokens=1" %%v in ('node -p "process.versions.node.split('.')[0]"') do set NODEMAJOR=%%v
if %NODEMAJOR% LSS 22 (
  echo ERROR: Node.js 22.12 or newer is required.
  node -v
  echo.
  pause
  exit /b 1
)

echo Node.js detected:
node -v
echo.

echo Installing build dependencies. This may take several minutes...
npm install --no-audit --no-fund
if errorlevel 1 goto BUILDERROR

echo.
echo Building the Windows installer and portable EXE...
npm run dist:win
if errorlevel 1 goto BUILDERROR

echo.
echo ================================================
echo  BUILD SUCCESSFUL
echo ================================================
echo.
echo Open the dist folder.
echo The installer and portable EXE are there.
echo.
start "" "%CD%\dist"
pause
exit /b 0

:BUILDERROR
echo.
echo ================================================
echo  BUILD FAILED
echo ================================================
echo Keep this window open and send a screenshot of the error.
echo.
pause
exit /b 1
