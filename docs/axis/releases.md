# Axis Release Notes

This page documents the release history of Axis, tracking new features, improvements, bug fixes, and known issues.

## Current Release

### Version 1.0.0 (June 15, 2024)

**Initial Public Release**

The first official release of Axis, providing a Windows desktop assistant powered by MCP Server capabilities.

#### Key Features

- Natural language interface for computer control
- Deep Windows OS integration
- MCP Server implementation for AI capabilities
- Context-aware assistance
- Application control via voice or text
- File management through natural language
- System monitoring and optimization

#### System Requirements

- Windows 10 (version 1903 or newer) or Windows 11
- 4GB RAM (8GB recommended)
- 500MB available disk space
- 2GHz dual-core processor
- Internet connection for full functionality

#### Known Issues

- Voice activation may have reduced accuracy in noisy environments
- Some legacy applications (pre-Windows 10) have limited integration
- PDF editing features require additional plugin installation
- High DPI scaling issues on some multi-monitor setups

## Pre-Release Versions

### Version 0.9.2 (May 28, 2024) - Beta

- **Improvements:**
  - Enhanced startup performance by 40%
  - Reduced memory usage during idle periods
  - Improved natural language processing accuracy
  - Better handling of context switching between applications
  
- **Bug Fixes:**
  - Fixed crash when processing large text files
  - Resolved issue with system tray icon disappearing
  - Fixed permissions dialog not appearing in certain scenarios
  - Corrected filesystem access on network drives

### Version 0.9.1 (May 12, 2024) - Beta

- **New Features:**
  - Added detailed system performance monitoring
  - Implemented battery optimization settings
  - Added support for custom voice commands
  
- **Improvements:**
  - Enhanced MCP Server connection stability
  - Improved response time for common queries
  - Better handling of Windows notifications
  - More efficient file indexing
  
- **Bug Fixes:**
  - Fixed memory leak in the UI component
  - Resolved issue with extension manager
  - Fixed command recognition in non-English locales

### Version 0.9.0 (April 25, 2024) - Beta

- **New Features:**
  - Initial implementation of the MCP Server client
  - Core Windows integration capabilities
  - Basic voice command recognition
  - Fundamental application control
  - File search and management
  
- **Known Issues:**
  - High CPU usage during initial scanning
  - Occasional disconnections from MCP Server
  - Limited support for Windows Store apps
  - Installation issues on some Windows 10 versions

### Version 0.8.5 (April 10, 2024) - Alpha

- **New Features:**
  - First implementation of the user interface
  - Basic command processing
  - Windows shell integration
  - System tray functionality
  
- **Known Issues:**
  - Limited functionality in core areas
  - Stability issues with extended use
  - No MCP Server connectivity
  - High resource usage

## Upcoming Releases

### Version 1.1.0 (Planned: July 2024)

Planned features include:

- Enhanced programming assistance tools
- Integration with popular cloud storage services
- Custom automation workflows
- Improved offline capabilities
- Performance optimizations for laptops and low-powered devices

### Version 1.2.0 (Planned: August 2024)

Planned features include:

- Advanced data analysis capabilities
- Deep integration with Microsoft 365
- Media management tools
- Expanded developer APIs
- Additional language support

## Version Numbering

Axis follows semantic versioning (MAJOR.MINOR.PATCH):

- **MAJOR**: Significant new features or fundamental changes
- **MINOR**: New features and improvements with backward compatibility
- **PATCH**: Bug fixes and minor improvements

## Update Policy

Axis updates are delivered as follows:

- **Automatic Updates**: Enabled by default, can be configured in Settings
- **Update Channels**: 
  - Stable: Well-tested releases (default)
  - Beta: Preview of upcoming features
  - Dev: Early access to new capabilities (may be unstable)
- **Update Frequency**:
  - Stable: Approximately monthly
  - Beta: Bi-weekly
  - Dev: Weekly or as available

## Reporting Issues

If you encounter issues with Axis:

1. Check if the issue is listed in Known Issues
2. Ensure you're running the latest version
3. Report the issue:
   - In-app: Type "report bug" in the command bar
   - Email: <axis-bugs@auxiliary.com>
   - Developer Portal: [bugs.auxiliary.com/axis](https://bugs.auxiliary.com/axis)

Include the following information:
- Axis version
- Windows version
- Steps to reproduce
- Expected vs. actual behavior
- Screenshots if applicable
- Log files (if possible)

## Accessing Previous Versions

Enterprise customers can access previous versions in the Enterprise Portal.

For individual users, previous versions are available by request through support for specific compatibility needs.

---

For complete installation instructions, see the [Installation Guide](installation.md).
