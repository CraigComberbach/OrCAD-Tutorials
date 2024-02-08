@echo off
color 04
echo Confirming will remove the following files from the repo:
git clean -x -d -f -n
echo.
set /p UserInput=Are you sure you want to proceed? Type 'y' or 'yes' to continue: 

if /i "%UserInput%"=="y" goto :action
if /i "%UserInput%"=="yes" goto :action
echo You did not type 'y' or 'yes'. Exiting...
goto :eof

:action
git clean -x -d -f
