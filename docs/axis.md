# Axis Project

## Overview

Axis is Auxiliary's Windows desktop assistant, designed to maximize productivity through intelligent integration with your computer. Powered by the Model Context Protocol (MCP), Axis provides natural language interaction with your computer's resources, applications, and data.

## Key Features

- **Natural Language Interface**: Interact with your computer using conversational prompts
- **Windows OS Integration**: Deep integration with Windows features and applications
- **MCP-Powered Capabilities**: Leverages the Model Context Protocol for advanced AI interactions
- **Context-Aware Assistance**: Understands your work context to provide relevant help
- **Application Control**: Launch and control applications through voice or text commands
- **File Management**: Find, organize, and manipulate files using natural language
- **System Monitoring**: Monitor system performance and receive alerts

## Technical Architecture

Axis is built using a modern architecture:

- **Frontend**: Electron-based user interface with responsive design
- **Core Engine**: MCP Server implementation for AI capabilities
- **Windows Integration Layer**: Deep OS integration via Windows API
- **Context Management**: Advanced context tracking and management
- **Security Layer**: Comprehensive security and privacy controls

## Getting Started

To start using Axis, see:

- [Installation Guide](axis/installation.md)
- [Quick Start Tutorial](axis/quickstart.md)

## User Guide

### Interface Overview

- **Command Interface**: Ctrl+Space to activate
- **Response Panel**: Displays responses and suggestions
- **Context Sidebar**: Shows current context and history
- **System Tray Icon**: Quick access and status
- **Settings Panel**: Configure Axis behavior

### Interaction Modes

- **Command Mode**: Direct text or voice commands
- **Conversational Mode**: Natural dialogue
- **Background Mode**: Proactive assistance
- **Focus Mode**: Minimizes interruptions

### Commands and Interactions

- **Action-based**: "Open [application]", "Find [item]"
- **Question-based**: "How do I [task]?"
- **Request-based**: "Help me with [task]"
- **Voice Commands**: Click mic icon or press Alt+Space
- **Command History**: Use history icon or Up/Down arrows

### System Integration

- **Start Menu Integration**: Launch apps by name
- **File Explorer Integration**: Find/manage files
- **System Settings Access**: Change Windows settings
- **Clipboard Management**: Access clipboard history
- **Window Management**: Arrange and manage windows
- **System Monitoring**: "Show CPU and memory usage", "Alert me if CPU usage goes above 80%"

### Application Control

- Launch apps: "Open Microsoft Word", "Start Chrome and navigate to auxiliary.com"
- In-app commands: "Format this paragraph", "Sum this column", "Run this code"

### File Management

- Find files: "Find documents about quarterly reports"
- File operations: "Create a folder named [name]", "Move these files to [location]"

### Content Creation and Editing

- Document help: "Draft an email to [recipient]", "Format this document using APA style"
- Code help: "Generate a function to [task] in [language]", "Explain this code block"

### Information Retrieval

- Local info: "Summarize this document", "Extract key points from this spreadsheet"
- Knowledge queries: "How do I [task] in Excel?", "What's the syntax for [function] in Python?"

### Customization

- Preferences: Visual theme, interaction style, response format, activation methods
- Custom commands: Settings → Custom Commands
- Workflows: Settings → Workflows

### Privacy and Security

- **Local Processing**: Most commands processed on your device
- **Data Storage**: Control what is stored and for how long
- **Transmission Controls**: Configure cloud data sharing
- **Access Management**: Manage app/system access
- **Authentication**: Biometric/password for sensitive commands
- **Permission Levels**: Granular system access
- **Audit Logging**: Review activity history
- **Secure Mode**: Enhanced restrictions

### Troubleshooting

- **Recognition Problems**: Train voice model, use quality mic
- **Performance**: Optimize in Settings → Performance
- **Integration Issues**: Fix app connectivity
- **Command Conflicts**: Resolve in custom commands
- **Diagnostic Tools**: Type "Axis diagnostics"
- **Support**: <axis-support@auxiliary.com>

## Frequently Asked Questions (FAQ)

### General

- **What is Axis?** Windows desktop assistant using natural language and AI (MCP).
- **Which Windows versions?** Windows 10 (1903+), Windows 11, Server 2019+.
- **Offline use?** Many features work offline; advanced AI needs internet/MCP.
- **How is Axis different?** Deep Windows integration, context awareness, privacy focus.

### Installation & Updates

- **How to install?** See [Installation Guide](axis/installation.md).
- **Update?** Auto-updates by default; manual check in Settings.
- **Roll back?** Settings → Advanced → Version Management.

### Features & Usage

- **Activate Axis?** Ctrl+Space, tray icon, "Hey Axis", or floating button.
- **Voice commands?** Enable in Settings → Activation → Voice Activation.
- **Custom commands?** Type "create command" or use Settings → Commands.
- **App support?** Most Windows apps, deep integration for Office, browsers, dev tools.
- **Programming help?** Code explanation, snippets, Git, project management.

### Privacy & Security

- **Cloud data?** Most commands local; cloud only as needed, configurable.
- **Corporate use?** Yes, with enterprise deployment, group policy, compliance.
- **Sensitive info?** Local processing, encryption, permissions, authentication.
- **Restrict access?** Settings → Security & Privacy.

### Performance

- **System requirements?** Windows 10+, 4GB RAM (8GB rec), 500MB disk, 2GHz dual-core.
- **Resource use?** Lightweight, configurable memory/bandwidth.
- **Startup?** Starts with Windows by default (can disable).

### Troubleshooting

- **Not responding?** Restart Axis, use Task Manager, try Safe Mode, reinstall if needed.
- **Commands not working?** Check internet, app state, refresh commands, reset cache.
- **Custom commands lost?** Restore in Settings or from backups/cloud sync.
- **Voice issues?** Train model, use good mic, adjust sensitivity.

### Extensions & Customization

- **Find extensions?** Built-in gallery, [Marketplace](https://extensions.auxiliary.com/axis).
- **Extension safety?** Only install trusted sources, review permissions.
- **Create extensions?** See [Developer Guide](axis/developer-guide.md), use SDK.
- **Sync settings?** Settings → Cloud → Enable Settings Sync.

### Licensing & Support

- **Free to use?** Basic (free), Pro (subscription), Enterprise (corporate).
- **Support?** In-app help, docs, forum, email <axis-support@auxiliary.com>.
- **Multiple computers?** Basic: 2 devices, Pro: 5, Enterprise: per agreement.
- **Uninstall?** Windows Settings → Apps → Uninstall Axis.

## Resources

- [Installation Guide](axis/installation.md)
- [Quick Start](axis/quickstart.md)
- [Configuration](axis/configuration.md)
- [Developer Guide](axis/developer-guide.md)
- [Release Notes](axis/releases.md)

For support or feature requests, contact the Axis team at <axis-support@auxiliary.com>.

---

## Appendix A: Installation & Distribution

Axis is a cross-platform desktop assistant built with Python and Qt (PySide6).

### Prerequisites

- Python 3.9 or newer (3.11+ recommended)
- pip package manager
- Qt 6 runtime libraries (for PySide6)

### Installation

- From PyPI: `pip install auxiliary-axis`
- From source:

  ```bash
  git clone https://github.com/auxiliary/auxiliary-axis.git
  cd auxiliary-axis
  pip install -r requirements.txt
  pip install .
  ```

### Verifying Installation

- Run `axis` (if installed via pip) or `python main.py` (from source)
- You should see the Axis icon in your system tray and the assistant window.

### Bundling for Distribution

- Use PyInstaller, AppImage, py2app, or Inno Setup/WiX as appropriate for your OS.

---

## Appendix B: Quickstart

- Launch Axis after installation.
- On first launch, a welcome overlay appears and a tray/menu icon is registered.
- **Main Window:** Command Bar (top), Response Panel (middle), Context Sidebar (optional).
- **Global Hotkey:** <kbd>Ctrl</kbd>+<kbd>Space</kbd> (default) toggles the main window.

### Running Your First Command

1. Focus the Command Bar.
2. Type `Hello Axis` and press <kbd>Enter</kbd>.
3. Axis will introduce itself and list available commands.

#### Sample Commands

- `Open Calculator` – Launches calculator
- `Search files for report` – Finds files
- `Summarize document` – Summarizes clipboard text
- `What’s the weather in London?` – Gets weather info

---

## Appendix C: Configuration Reference

Axis is highly configurable. Settings can be managed via the UI or by editing config files.

- **User Settings:** `%APPDATA%\Auxiliary\Axis\config.json`
- **System Settings:** `%PROGRAMDATA%\Auxiliary\Axis\system-config.json`
- **Extensions, Logs, Cache:** See configuration.md for details

### Main Configuration Areas

- General (startup, language, theme)
- Performance (memory, CPU, background processing)
- Activation (hotkeys, voice, wake word)
- Security & Privacy (permissions, data collection, authentication)
- Integration (Windows, applications, cloud)
- MCP (server, context, tool access)
- Extensions (management, isolation, custom settings)
- Advanced (aliases, hooks, network, CLI)

---

## Appendix D: Developer Guide

Axis supports integrations, extensions, and custom solutions.

### Development Environment Setup

- Windows 10+, Axis app installed, Developer mode enabled
- Node.js 18+, Visual Studio 2019+, Python 3.9+

### SDK Installation

- JavaScript/TypeScript: `npm install @auxiliary/axis-sdk`
- Python: `pip install auxiliary-axis-sdk`
- .NET: `dotnet add package Auxiliary.Axis.SDK`
- Java: `mvn install:install-file -Dfile=axis-sdk-1.0.jar ...`

### Developer Tools

- Axis Console, API Explorer, Context Inspector, Performance Monitor (see Developer Options in Axis)

---

## Appendix E: Release Notes & Versioning

See below for recent and planned releases, versioning policy, and update/reporting procedures.

### Current Release

- **Version 1.0.0 (June 15, 2024):** Initial public release
- Key features: Natural language interface, Windows integration, MCP, context-aware assistance, app/file/system control
- System requirements: Windows 10/11, 4GB RAM, 500MB disk, 2GHz dual-core
- Known issues: Voice accuracy in noise, legacy app support, PDF plugin, DPI scaling

### Pre-Releases & Upcoming

- 0.9.x: Beta, 0.8.x: Alpha (see full changelog in releases.md)
- 1.1.0+: Programming tools, cloud storage, automation, offline, performance
- 1.2.0+: Data analysis, Microsoft 365, media, APIs, languages

### Versioning

- Semantic versioning (MAJOR.MINOR.PATCH)
- Update policy: Auto-updates, channels (stable/beta/dev), frequency varies

### Reporting Issues

- In-app: "report bug"
- Email: <axis-bugs@auxiliary.com>
- Portal: [bugs.auxiliary.com/axis](https://bugs.auxiliary.com/axis)

---

## Appendix F: API Reference

Axis exposes APIs for integration and automation.

### API Overview

- Command API: Register/trigger custom commands
- Context API: Access/modify context
- UI API: Notifications, custom panels
- System API: File/app control
- MCP Client API: Direct MCP protocol access

### Authentication

- API keys: Generate in Axis Settings → Developer → API Keys
- OAuth: Supported for advanced integrations

### SDKs

- JavaScript/TypeScript, Python, .NET, Java (see Developer Guide)

### Error Handling & Rate Limits

- Promises return structured errors
- Rate limits by tier (see API docs)

### Further Resources

- [API Playground](https://developer.auxiliary.com/axis/playground)
- [Sample Apps](https://github.com/auxiliary/axis-samples)
- [Forum](https://forum.auxiliary.com/axis-dev)
- API support: <axis-api-support@auxiliary.com>
