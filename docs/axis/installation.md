# Axis Installation Guide

Axis is a cross-platform desktop assistant built with Python and Qt (PySide6). Follow these steps to install and verify Axis on your system.

## Prerequisites

- Python 3.9 or newer (3.11+ recommended)
- pip package manager
- Qt 6 runtime libraries (for PySide6)
  - On Linux: install via your distro (e.g., `sudo apt install python3-pyside6 qt6-qml-runtime`)
  - On macOS: install via Homebrew (`brew install pyside6`)
  - On Windows: download and install the Qt runtime or use the PySide6 wheels

## Installing Axis

Option 1: Install from PyPI

```bash
pip install auxiliary-axis
```

Option 2: Install from source

```bash
git clone https://github.com/auxiliary/auxiliary-axis.git
cd auxiliary-axis
pip install -r requirements.txt
pip install .
```

## Verifying the Installation

Run Axis in development mode:

```bash
axis  # if installed via pip
# or from source:
python main.py
```

You should see the Axis icon appear in your system tray and the assistant window.

## Bundling for Distribution

To create standalone binaries:

- **PyInstaller**: add a spec that includes Qt and QML resources, then:
  ```bash
  pyinstaller main.py --onefile --add-data 'data:./data' --add-data 'qml:./qml'
  ```

- **Linux AppImage**: use linuxdeploy and appimage toolchains
- **macOS**: use `py2app` or a bundled installer
- **Windows**: create an installer with `Inno Setup` or `WiX` including the Qt runtime

Refer to the official packaging tools for detailed instructions.
