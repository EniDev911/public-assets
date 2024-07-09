@echo off
cd %1

for %%i in (%CD%) do set NEWDIR=%%~ni
PROMPT %NEWDIR%$G$S
