@echo off
setlocal
cd /d "%~dp0"

set "PY=C:\Workspace\.venv\Scripts\python.exe"

if not exist "%PY%" (
  echo [ERROR] Python venv not found:
  echo         %PY%
  pause
  exit /b 1
)

if "%~1"=="" (
  echo.
  echo Usage:  install-pkg.cmd numpy pandas matplotlib
  echo Target: %PY%
  echo.
  pause
  exit /b 1
)

echo Installing into the shared venv ...
echo   %PY%
"%PY%" -m pip install --disable-pip-version-check %*

echo.
echo Done. Press any key to close.
pause >nul
