set APP_DIR=%LIBRARY_BIN%\KaleidoApp
set LAUNCH_SCRIPT=%LIBRARY_BIN%\kaleido.cmd
set BIN_LOCATION=%APP_DIR%/kaleido.cmd

mkdir %APP_DIR%
xcopy * %APP_DIR% /E/H
rmdir %APP_DIR%\etc\mathjax

if errorlevel 1 exit 1

(
echo @echo off
echo %BIN_LOCATION% %%*
)>"%LAUNCH_SCRIPT%"
