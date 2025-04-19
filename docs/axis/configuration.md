# Axis Configuration Guide

This guide covers all configuration options for Axis, allowing you to customize the desktop assistant to your specific needs.

## Configuration Locations

Axis configuration is stored in several locations:

- **User Settings**: `%APPDATA%\Auxiliary\Axis\config.json`
- **System Settings**: `%PROGRAMDATA%\Auxiliary\Axis\system-config.json`
- **Extensions**: `%APPDATA%\Auxiliary\Axis\extensions\`
- **Logs**: `%APPDATA%\Auxiliary\Axis\logs\`
- **Cache**: `%LOCALAPPDATA%\Auxiliary\Axis\Cache\`

## General Settings

### Application Preferences

Configure general application behavior:

| Setting | Description | Default | Options |
|---------|-------------|---------|---------|
| `startWithWindows` | Launch at Windows startup | `true` | `true`, `false` |
| `minimizeToTray` | Minimize to system tray | `true` | `true`, `false` |
| `updateChannel` | Update release channel | `stable` | `stable`, `beta`, `dev` |
| `language` | Interface language | `en-US` | ISO language codes |
| `theme` | Visual theme | `system` | `light`, `dark`, `system` |

Edit these settings in the application: Settings → General

Or manually in config.json:

```json
{
  "general": {
    "startWithWindows": true,
    "minimizeToTray": true,
    "updateChannel": "stable",
    "language": "en-US",
    "theme": "system"
  }
}
```

### Performance Settings

Optimize performance based on your system:

| Setting | Description | Default | Range |
|---------|-------------|---------|-------|
| `memoryLimit` | Maximum memory usage (MB) | `512` | `256`-`4096` |
| `cpuPriority` | Process priority | `normal` | `low`, `normal`, `high` |
| `backgroundProcessing` | Allow processing in background | `true` | `true`, `false` |
| `responseCache` | Cache size for responses (MB) | `100` | `0`-`1024` |

Edit these settings in the application: Settings → Performance

### Activation Settings

Configure how you activate and interact with Axis:

| Setting | Description | Default | Options |
|---------|-------------|---------|---------|
| `activationHotkey` | Keyboard shortcut | `Ctrl+Space` | Customizable |
| `voiceActivation` | Enable voice activation | `false` | `true`, `false` |
| `wakeWord` | Wake word for voice activation | `"Hey Axis"` | Customizable |
| `voiceActivationSensitivity` | Sensitivity level | `medium` | `low`, `medium`, `high` |
| `activationRadius` | Click activation radius (px) | `10` | `5`-`20` |

Edit these settings in the application: Settings → Activation

## Security & Privacy

### Permission Settings

Control what Axis can access:

| Setting | Description | Default |
|---------|-------------|---------|
| `fileSystemAccess` | Level of file system access | `userDirectories` |
| `applicationControl` | Control other applications | `userInitiated` |
| `networkAccess` | Internet connectivity | `enabled` |
| `clipboardAccess` | Read/write clipboard | `prompt` |
| `peripheralAccess` | Access microphone, camera, etc. | `prompt` |

Available options for most permissions:
- `disabled`: Feature is completely disabled
- `prompt`: Ask for permission each time
- `userInitiated`: Allow when explicitly requested by user
- `enabled`: Always allow

Edit these settings in the application: Settings → Security & Privacy

### Data Collection

Control data usage and collection:

| Setting | Description | Default |
|---------|-------------|---------|
| `collectAnonymousUsage` | Basic usage statistics | `true` |
| `collectDiagnostics` | Error and diagnostic data | `true` |
| `collectInteractions` | Command and response data | `false` |
| `localDataRetention` | Days to keep local history | `30` |

Edit these settings in the application: Settings → Privacy → Data Collection

### Authentication

Configure authentication requirements:

| Setting | Description | Default |
|---------|-------------|---------|
| `requireAuthForSensitiveCommands` | Re-authenticate for sensitive operations | `true` |
| `authenticationMethod` | Method for authentication | `windowsHello` |
| `authTimeout` | Authentication session timeout (minutes) | `30` |
| `lockOnScreensaver` | Lock when screensaver activates | `true` |

Authentication methods:
- `none`: No authentication required
- `password`: Use password
- `windowsHello`: Use Windows Hello (biometric)
- `pin`: Use PIN code

Edit these settings in the application: Settings → Security → Authentication

## Integration Settings

### Windows Integration

Configure integration with Windows features:

| Setting | Description | Default |
|---------|-------------|---------|
| `enableExplorerIntegration` | Add context menu in Explorer | `true` |
| `enableSearchIntegration` | Include results in Windows Search | `true` |
| `enableNotificationCenter` | Show cards in Notification Center | `true` |
| `enableWidgets` | Add widgets to Windows Widget panel | `false` |
| `enableJumpList` | Add common commands to taskbar jump list | `true` |

Edit these settings in the application: Settings → Integration → Windows

### Application Integration

Configure how Axis interacts with applications:

| Setting | Description | Default |
|---------|-------------|---------|
| `officeSuiteIntegration` | Microsoft Office integration | `enabled` |
| `browserIntegration` | Web browser integration | `enabled` |
| `developmentToolsIntegration` | Integration with dev tools | `disabled` |
| `mediaApplicationsIntegration` | Media app integration | `enabled` |
| `communicationAppsIntegration` | Email/chat app integration | `enabled` |

Each integration can be set to:
- `disabled`: No integration
- `basic`: Basic command support
- `enabled`: Full feature support
- `custom`: Custom settings per application

Edit these settings in the application: Settings → Integration → Applications

### Cloud Services

Configure cloud service connections:

| Setting | Description | Default |
|---------|-------------|---------|
| `enableCloudSync` | Sync settings to cloud | `true` |
| `primaryStorageService` | Cloud storage provider | `onedrive` |
| `enabledServices` | Enabled cloud services | `["onedrive", "gdrive"]` |
| `syncFrequency` | Sync frequency (minutes) | `60` |

Edit these settings in the application: Settings → Integration → Cloud Services

## MCP Configuration

### MCP Server Settings

Configure the Model Context Protocol server:

| Setting | Description | Default |
|---------|-------------|---------|
| `mcpServerUrl` | URL of MCP server | `"https://mcp.auxiliary.com"` |
| `mcpVersion` | MCP protocol version | `"1.0"` |
| `mcpAuthToken` | Authentication token | `null` |
| `mcpMaxTokens` | Max tokens per request | `2048` |
| `mcpResponseFormat` | Preferred response format | `"json"` |

Edit these settings in the application: Settings → Advanced → MCP Server

### Context Settings

Configure how context is managed:

| Setting | Description | Default |
|---------|-------------|---------|
| `contextRetention` | How long to retain context | `"session"` |
| `maxContextItems` | Maximum items in context | `50` |
| `includeSystemInfo` | Include system info in context | `true` |
| `includeScreenContent` | Include screen content | `prompt` |
| `includeActiveDocument` | Include active document content | `prompt` |

Context retention options:
- `command`: Only during current command
- `conversation`: During current conversation
- `session`: During current session
- `persistent`: Across sessions

Edit these settings in the application: Settings → Advanced → Context

### Tool Access

Configure which tools are available to MCP:

| Setting | Description | Default |
|---------|-------------|---------|
| `fileSystemTools` | File system operations | `restricted` |
| `webSearchTools` | Internet search capabilities | `enabled` |
| `calculationTools` | Mathematical operations | `enabled` |
| `codeExecutionTools` | Execute code | `disabled` |
| `applicationControlTools` | Control applications | `prompt` |

Tool access levels:
- `disabled`: Tool not available
- `prompt`: Ask before using
- `restricted`: Limited capabilities
- `enabled`: Full capabilities

Edit these settings in the application: Settings → Advanced → Tool Access

## Extension Configuration

### Extension Management

Configure how extensions are handled:

| Setting | Description | Default |
|---------|-------------|---------|
| `enableExtensions` | Allow extensions to run | `true` |
| `autoUpdateExtensions` | Update extensions automatically | `true` |
| `trustedSources` | Sources to trust without prompting | `["auxiliary.com"]` |
| `extensionIsolation` | Security isolation level | `standard` |

Extension isolation levels:
- `minimal`: Minimal isolation (not recommended)
- `standard`: Process isolation
- `strict`: Strict sandbox isolation

Edit these settings in the application: Settings → Extensions → Management

### Individual Extension Settings

Each extension can have custom settings. For example, for an Excel extension:

```json
{
  "extensions": {
    "com.example.excel-assistant": {
      "enabled": true,
      "permissions": {
        "excel": "allow",
        "filesystem": "restricted"
      },
      "customSettings": {
        "analysisDepth": "detailed",
        "autoFormat": true
      }
    }
  }
}
```

Edit these settings in the application: Settings → Extensions → [Extension Name]

## Advanced Configuration

### Command Aliases

Create aliases for common commands:

```json
{
  "commandAliases": {
    "find": "search for files containing",
    "remind": "set a reminder for",
    "analyze": "perform analysis on",
    "summarize": "create a summary of"
  }
}
```

Edit these settings in the application: Settings → Advanced → Command Aliases

### System Hooks

Configure system event hooks:

| Setting | Description | Default |
|---------|-------------|---------|
| `onStartup` | Commands to run at startup | `[]` |
| `onShutdown` | Commands to run at shutdown | `[]` |
| `onWake` | Commands to run on wake from sleep | `[]` |
| `onIdle` | Commands to run when system is idle | `[]` |
| `onUserSwitch` | Commands to run on user switch | `[]` |

Example configuration:

```json
{
  "systemHooks": {
    "onStartup": [
      "check for updates",
      "summarize my calendar for today"
    ],
    "onWake": [
      "refresh connection"
    ]
  }
}
```

Edit these settings in the application: Settings → Advanced → System Hooks

### Network Configuration

Configure network behavior:

| Setting | Description | Default |
|---------|-------------|---------|
| `proxyEnabled` | Use proxy server | `false` |
| `proxyServer` | Proxy server address | `""` |
| `proxyPort` | Proxy server port | `8080` |
| `proxyUsername` | Proxy authentication username | `null` |
| `offlineMode` | Allow offline operation | `true` |
| `connectionTimeout` | Connection timeout (seconds) | `30` |

Edit these settings in the application: Settings → Advanced → Network

## Command-Line Configuration

Axis supports command-line arguments for configuration:

| Argument | Description | Example |
|----------|-------------|---------|
| `--config` | Path to config file | `--config="C:\custom-config.json"` |
| `--log-level` | Logging verbosity | `--log-level=debug` |
| `--reset-config` | Reset to defaults | `--reset-config` |
| `--safe-mode` | Start in safe mode | `--safe-mode` |
| `--no-extensions` | Disable extensions | `--no-extensions` |

Example usage:

