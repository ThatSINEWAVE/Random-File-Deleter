@echo off
setlocal enabledelayedexpansion

set "script_dir=%~dp0"
set "file_extension=.prproj"

:loop
REM Generate a random number between 1 and 10
set /a "rand=!random! %% 10 + 1"

REM Pause for 10 minutes (600 seconds)
timeout /t 3 /nobreak >nul

REM Get a list of files with the specified extension in the script's directory
for %%F in ("%script_dir%*%file_extension%") do (
    set /a "rand=!random! %% 10 + 1"
    if !rand! == 1 (
        echo Deleting file: "%%F"
        del /F /Q "%%F"
        goto :loop
    )
)

goto :loop