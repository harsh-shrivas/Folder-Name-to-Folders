@echo off
setlocal EnableDelayedExpansion
cd /d "%~dp0"
title Clipboard Folder Generator
echo ====================================================
echo       CLIPBOARD BATCH FOLDER GENERATOR
echo ====================================================
echo  * Creating folders in: %CD%
echo  * Reading folder names from your clipboard...
echo  * Blank lines are skipped automatically.
echo  * Forward slashes (/) turn into (_).
echo ====================================================
echo.

set "count=0"

for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "Get-Clipboard"`) do (
    set "line=%%A"
    REM Strip any quote characters
    set "line=!line:"=!"
    REM Trim leading spaces
    for /f "tokens=* delims= " %%B in ("!line!") do set "line=%%B"
    if defined line (
        REM Replace '/' with '_'
        set "clean=!line:/=_!"
        if not exist "!clean!" (
            mkdir "!clean!"
            echo [OK] Created: "!clean!"
            set /a count+=1
        ) else (
            echo [SKIP] Already Exists: "!clean!"
        )
    )
)

echo.
echo ====================================================
echo  Done! !count! folder(s) created. Closing...
echo ====================================================
timeout /t 2 >nul