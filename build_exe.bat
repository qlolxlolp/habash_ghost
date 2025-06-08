@echo off
REM Build standalone executable for gui.py using PyInstaller

REM Activate virtual environment if any (optional)
REM call venv\Scripts\activate

REM Clean previous builds
taskkill /f /im IlamMinerDetector.exe >nul 2>&1
rmdir /s /q build
rmdir /s /q dist
if exist gui.spec del /q gui.spec

REM Build executable with PyInstaller
pyinstaller --noconfirm --onefile --windowed --name IlamMinerDetector gui.py

echo Build complete. The executable will be in the dist folder.
pause
