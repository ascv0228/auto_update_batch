@echo off

set version="v0.4.0"
set url=https://codeload.github.com/google/python-fire/zip/refs/tags/%version%

set zipFile="%CD%/python-fire.zip"
set unzipFloder="%CD%"

curl %url% --output %zipfile%

powershell -executionpolicy remotesigned -Command "Expand-Archive -Path %zipFile% -DestinationPath %unzipFloder% -Force"

del %zipFile%
pause
