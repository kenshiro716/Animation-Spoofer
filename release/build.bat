@echo off
REM Build script for Animation Spoofer - Windows
REM This script compiles the Go executable and packages the Roblox plugin

echo Building Animation Spoofer...
echo.

REM Check if Go is installed
go version >nul 2>&1
if errorlevel 1 (
    echo Error: Go is not installed or not in PATH
    echo Please install Go from https://golang.org/dl/
    pause
    exit /b 1
)

REM Create dist folder
if not exist "dist" mkdir dist

echo [1/3] Building executable...
cd ..
go build -o release/dist/AnimationSpoofer.exe ./cmd/assetreuploader
if errorlevel 1 (
    echo Error building executable
    pause
    exit /b 1
)
cd release

echo [2/3] Packaging Roblox plugin...
REM Check if rojo is installed
rojo --version >nul 2>&1
if errorlevel 1 (
    echo Warning: Rojo not found. Install with: aftman add rojo-rbx/rojo
    echo Skipping plugin build - copy plugin files manually from ../plugin folder
) else (
    cd ..
    rojo build plugin -o release/dist/AnimationSpoofer.rbxm
    cd release
    if errorlevel 1 (
        echo Error building plugin
        pause
        exit /b 1
    )
)

echo [3/3] Creating package files...

echo.
echo Build complete!
echo.
echo Output files in: dist/
echo - AnimationSpoofer.exe (Run this first)
echo - AnimationSpoofer.rbxm (Roblox plugin)
echo.
pause
