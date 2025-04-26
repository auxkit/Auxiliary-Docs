# Axis Quickstart Guide

This quick guide helps you launch and use Axis on Windows, macOS, and Linux.

## First Launch

After installing Axis (see [Installation Guide](installation.md)), start the application by:

- Running `axis` in a terminal (if installed via pip)
- Or from source: `python main.py`

On first launch, Axis displays a brief welcome overlay and registers a tray icon or menu bar item.

## Basic UI Walkthrough

- **System Tray / Menu Bar Icon**: Click to open or hide the assistant window.
- **Main Window**: Contains:
  - **Command Bar** at the top for typing or pasting requests
  - **Response Panel** below for results, suggestions, or rich content
  - **Context Sidebar** optional panel showing active context information

- **Global Hotkey**: Press <kbd>Ctrl</kbd>+<kbd>Space</kbd> (default) to toggle visibility of the main window.

## Running Your First Command

1. Focus the Command Bar.
2. Type `Hello Axis` and press <kbd>Enter</kbd>.
3. The assistant will introduce itself and list available commands.

### Sample Commands

- `Open Calculator` – Launches the system calculator.
- `Search files for report` – Finds matching files in your workspace.
- `Summarize document` – Summarizes text copied to the clipboard.
- `What’s the weather in London?` – Retrieves weather info via integrated API.

## Exiting Axis

- Click the tray/menu icon and select **Quit**, or
- Press the hotkey twice quickly, or
- Close the main window with the window controls.

## Next Steps

- Read the [User Manual](user-manual.md) for detailed feature descriptions.
- Configure preferences in the [Configuration Guide](configuration.md).
- Explore writing your own extensions in the [Extension System](extension-system.md).
