@echo off
setlocal

set source=%cd%\Arial.ttf
set destination=%APPDATA%\Ultralytics\Arial.ttf

if not exist %APPDATA%\Ultralytics (
  mkdir %APPDATA%\Ultralytics
)

echo Copying %source% to %destination%...
copy %source% %destination% /Y

echo Done.
pause