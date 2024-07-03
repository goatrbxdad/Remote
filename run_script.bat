
@echo off
powershell.exe -ExecutionPolicy Bypass -File "run_script.ps1\run_script.ps1"
timeout /t 20 >nul
