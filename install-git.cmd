@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul

set "URL=https://registry.npmmirror.com/-/binary/git-for-windows/v2.56.0.windows.4/PortableGit-2.56.0.4-64-bit.7z.exe"
set "DST=D:\Git"
set "PKG=%TEMP%\PortableGit-2.56.0.4-64-bit.7z.exe"

echo ============================================
echo  Git 2.56.0  Portable  install  script
echo  Target: %DST%
echo ============================================
echo.

echo [1/4] Downloading (~60 MB, please wait) ...
if exist "%PKG%" del /f /q "%PKG%"
curl.exe -L --fail --connect-timeout 20 -o "%PKG%" "%URL%"
if errorlevel 1 (
  powershell -NoProfile -Command "[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '%URL%' -OutFile '%PKG%'"
)
if not exist "%PKG%" goto fail
for %%A in ("%PKG%") do echo       downloaded: %%~zA bytes

echo [2/4] Extracting to %DST% ...
if not exist "%DST%" mkdir "%DST%"
start /wait "" "%PKG%" -o"%DST%" -y
if not exist "%DST%\cmd\git.exe" goto fail
echo       ok

echo [3/4] Adding %DST%\cmd to user PATH ...
powershell -NoProfile -Command "$d='D:\Git\cmd'; $p=[Environment]::GetEnvironmentVariable('Path','User'); if($null -eq $p){$p=''}; if($p -notlike ('*'+$d+'*')){[Environment]::SetEnvironmentVariable('Path', ($p.TrimEnd(';') + ';' + $d), 'User'); Write-Host '       PATH updated'} else { Write-Host '       already in PATH' }"

echo [4/4] Verify ...
set "PATH=%DST%\cmd;%PATH%"
"%DST%\cmd\git.exe" --version
if errorlevel 1 goto fail

echo.
echo ============================================
echo  DONE. Restart VS Code, then run:  git --version
echo ============================================
del /f /q "%PKG%" 2>nul
pause
exit /b 0

:fail
echo.
echo  FAILED. Please check your network and run this script again.
pause
exit /b 1
