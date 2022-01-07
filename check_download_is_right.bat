@echo off

curl https://codeload.github.com/google/python-fire/zip/refs/tags/v0.4.1 --output ./a.zip

setlocal
set file="./a.zip"
set maxbytesize=1000

FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA

if %size% LSS %maxbytesize% (
    echo download error
) ELSE (
    echo.File is ^>= %maxbytesize% bytes
)
pause
