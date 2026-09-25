# Animation Spoofer - Release Package

## Quick Start

This folder contains everything you need to run Animation Spoofer.

### What's Included

- **dist/AnimationSpoofer.exe** - The main application (Windows)
- **dist/AnimationSpoofer** - The main application (Linux/macOS)
- **dist/AnimationSpoofer.rbxm** - Roblox Studio Plugin
- **config.ini** - Configuration file
- **build.bat** - Windows build script
- **build.sh** - Linux/macOS build script

## Installation & Setup

### Step 1: Run the Executable

**Windows:**
```bash
cd dist
AnimationSpoofer.exe
```

**Linux/macOS:**
```bash
cd dist
./AnimationSpoofer
```

The application will:
1. Ask for your Roblox security cookie (ROBLOSECURITY)
2. Start a local server on port 38073
3. Wait for plugin commands

### Step 2: Install the Roblox Plugin

1. Open **Roblox Studio**
2. Go to **Plugins** → **Manage Plugins**
3. Click **Install Plugin** and select `dist/AnimationSpoofer.rbxm`
4. Once installed, you'll see an **Asset Reuploader** toolbar button

### Step 3: Use the Plugin

1. Make sure the executable is running in the background
2. Click the **Asset Reuploader** button in Roblox Studio
3. Select assets to reupload
4. The plugin communicates with the executable automatically

## Configuration

### Port Configuration

The default port is **38073**. To change it:

1. Edit `config.ini` in the release folder
2. Change: `port=38073` to your desired port
3. Restart the executable
4. Update the plugin settings (Port in plugin settings)

### Cookie Storage

Your ROBLOSECURITY cookie is stored in `cookie.txt` alongside the executable. Keep this file safe and secure!

## Building from Source

If you want to build the executable and plugin yourself:

**Windows:**
```bash
build.bat
```

**Linux/macOS:**
```bash
chmod +x build.sh
./build.sh
```

Requirements:
- [Go](https://golang.org/dl/) (for executable)
- [Rojo](https://rojo.space/) (for plugin)

## Troubleshooting

### "Connection refused"
- Make sure the executable is running
- Check that port 38073 is not in use by another application
- Try changing the port in `config.ini`

### "Invalid cookie"
- Make sure your ROBLOSECURITY cookie is still valid
- Delete `cookie.txt` and restart to enter a new cookie

### Plugin not showing up
- Restart Roblox Studio after installing
- Verify the plugin was installed correctly

## Support

For issues and questions:
- Discord: [Join Community](https://discord.gg/XTEtUqPTat)
- GitHub: [Report Issues](https://github.com/kenshiro716/Animation-Spoofer/issues)

## License

GPL-3.0 License
