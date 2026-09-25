#!/bin/bash
# Build script for Animation Spoofer - Linux/macOS
# This script compiles the Go executable and packages the Roblox plugin

echo "Building Animation Spoofer..."
echo ""

# Check if Go is installed
if ! command -v go &> /dev/null; then
    echo "Error: Go is not installed"
    echo "Please install Go from https://golang.org/dl/"
    exit 1
fi

# Create dist folder
mkdir -p dist

echo "[1/3] Building executable..."
cd ..
go build -o release/dist/AnimationSpoofer ./cmd/assetreuploader
if [ $? -ne 0 ]; then
    echo "Error building executable"
    exit 1
fi
cd release

echo "[2/3] Packaging Roblox plugin..."
# Check if rojo is installed
if ! command -v rojo &> /dev/null; then
    echo "Warning: Rojo not found. Install with: aftman add rojo-rbx/rojo"
    echo "Skipping plugin build - copy plugin files manually from ../plugin folder"
else
    cd ..
    rojo build plugin -o release/dist/AnimationSpoofer.rbxm
    cd release
    if [ $? -ne 0 ]; then
        echo "Error building plugin"
        exit 1
    fi
fi

echo "[3/3] Creating package files..."

echo ""
echo "Build complete!"
echo ""
echo "Output files in: dist/"
echo "  - AnimationSpoofer (Run this first)"
echo "  - AnimationSpoofer.rbxm (Roblox plugin)"
echo ""
