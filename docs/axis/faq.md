# Axis Frequently Asked Questions

This page answers common questions about Axis, the Windows desktop assistant.

## General Questions

### What is Axis?

Axis is a Windows desktop assistant that uses natural language processing and AI capabilities to help you control your computer and automate tasks. It leverages the Model Context Protocol (MCP) to provide intelligent interactions with your applications, files, and system resources.

### Which Windows versions are supported?

Axis is compatible with:
- Windows 10 (version 1903 or newer)
- Windows 11
- Windows Server 2019 or newer

### Does Axis work offline?

Yes, many basic features work offline. However, advanced AI capabilities require an internet connection to communicate with the MCP server. You can configure which features should be available offline in Settings → Advanced → Offline Mode.

### How is Axis different from Windows Copilot or other assistants?

Axis differentiates itself through:
- Deep Windows integration at the system level
- Advanced control of applications and files
- MCP-based architecture for extensibility
- Context-aware assistance that understands what you're working on
- Focus on privacy with local processing options

## Installation & Updates

### How do I install Axis?

Follow the [Installation Guide](installation.md) for detailed instructions. In summary:
1. Download the installer from the Auxiliary portal
2. Run the installation wizard
3. Follow the on-screen instructions

### How large is the Axis installation?

The base installation requires approximately 250MB of disk space. Additional space may be needed for extensions, cached data, and logs.

### How do I update Axis?

Axis updates automatically by default. You can also:
1. Go to Settings → About → Check for Updates
2. Or manually download the latest version from the Auxiliary portal

### Can I roll back to a previous version?

Yes, you can roll back to a previous version:
1. Go to Settings → Advanced → Version Management
2. Select "View Update History"
3. Choose a previous version and click "Restore This Version"

## Features & Usage

### How do I activate Axis?

You can activate Axis in several ways:
- Press Ctrl+Space (default hotkey)
- Click the Axis icon in the system tray
- Say "Hey Axis" if voice activation is enabled
- Click the floating Axis button (if enabled)

### Can I use voice commands with Axis?

Yes, enable voice commands in Settings → Activation → Voice Activation. Then:
- Click the microphone icon in the command bar, or
- Use the "Hey Axis" wake word (if enabled), or
- Press Alt+Space (default voice command hotkey)

### How do I create custom commands?

Create custom commands in two ways:
1. Quick method: Type "create command" in the Axis command bar and follow the guided process
2. Advanced method: Go to Settings → Commands → Custom Commands → Create New

### Does Axis work with all applications?

Axis works with most Windows applications, with deeper integration for popular software like:
- Microsoft Office suite
- Major browsers (Chrome, Edge, Firefox)
- Development environments (VS Code, Visual Studio)
- Creative tools (Adobe suite, etc.)

For other applications, basic functionality like launching and window management is supported.

### Can Axis help with programming tasks?

Yes, Axis includes programming assistance features:
- Code explanation and documentation lookup
- Snippet generation and debugging help
- Git operations
- Project management
- Environment configuration

Enable developer tools in Settings → Integration → Development Tools.

## Privacy & Security

### Does Axis send my data to the cloud?

Axis prioritizes privacy. By default:
- Basic commands are processed locally
- Only when needed, specific data is sent to the MCP server
- You can configure exactly what data can be shared in Settings → Privacy
- Axis clearly indicates when data is being processed remotely

### Can I use Axis in a corporate environment?

Yes, Axis is designed for corporate use with:
- Enterprise deployment options
- Group policy support
- Compliance with corporate security policies
- Logging and auditing features
- Role-based access controls

Contact our enterprise sales team for corporate licensing.

### How does Axis protect sensitive information?

Axis uses several methods to protect sensitive data:
- Local processing for sensitive commands
- Data encryption for any cloud communication
- Permission controls for system access
- Authentication for sensitive operations
- Data minimization principles throughout

### Can I restrict what Axis can access?

Yes, configure Axis permissions in Settings → Security & Privacy, including:
- File system access (which folders Axis can access)
- Application control (which apps Axis can interact with)
- System settings access
- Network connectivity
- Personal data usage

## Performance & Resources

### What are the system requirements for Axis?

Minimum requirements:
- Windows 10 (version 1903) or newer
- 4GB RAM (8GB recommended)
- 500MB available disk space
- 2GHz dual-core processor
- Internet connection for full functionality

### Does Axis slow down my computer?

Axis is designed to be lightweight with:
- Smart resource management
- Configurable memory limits
- Background processing controls
- Automatic idle detection

If you notice performance issues, adjust settings in Settings → Performance.

### How much bandwidth does Axis use?

Bandwidth usage varies based on your activity, but typically:
- Basic operation: ~5-20MB per day
- Heavy usage with frequent AI interactions: ~100-200MB per day
- You can monitor and limit bandwidth in Settings → Network → Usage Limits

### Does Axis run at startup?

Yes, by default Axis starts with Windows to provide immediate assistance. You can disable this in Settings → General → Startup Options.

## Troubleshooting

### Axis isn't responding. What should I do?

Try these steps in order:
1. Click the Axis icon and select "Restart"
2. If unresponsive, use Task Manager to end the "Axis.exe" process, then restart it
3. Try safe mode: Right-click the Axis icon and select "Start in Safe Mode"
4. Reinstall Axis if problems persist

### Commands aren't working correctly. How can I fix this?

If commands aren't working:
1. Check your internet connection for cloud-based features
2. Ensure the application you're trying to control is not in a restricted mode
3. Try "Refresh Commands" from the Axis system tray icon
4. Reset command cache in Settings → Advanced → Reset → "Clear Command Cache"

### My custom commands disappeared. How do I recover them?

Custom commands are stored in your user profile. To recover:
1. Go to Settings → Commands → Custom Commands → "Restore Commands"
2. If that doesn't work, check for backups in `%APPDATA%\Auxiliary\Axis\Backups\`
3. If you have cloud sync enabled, try "Sync from Cloud" in Settings → Cloud

### Why isn't voice recognition working well?

Improve voice recognition:
1. Train the voice model in Settings → Activation → Voice → "Train Recognition"
2. Use a quality microphone in a quiet environment
3. Speak clearly and at a moderate pace
4. Adjust the sensitivity in Settings → Activation → Voice → "Sensitivity"

## Extensions & Customization

### Where can I find extensions for Axis?

Find extensions in:
1. The built-in Extensions Gallery (Settings → Extensions → Browse)
2. The [Auxiliary Extension Marketplace](https://extensions.auxiliary.com/axis)
3. Third-party developer websites (enable trusted sources first)

### Are extensions safe to install?

Extensions go through security review, but to ensure safety:
1. Only install from trusted sources
2. Review the permissions requested during installation
3. Use extension isolation in Settings → Extensions → Security → "Isolate Extensions"
4. Report suspicious extensions to our security team

### Can I create my own extensions?

Yes, developers can create custom extensions:
1. See the [Developer Guide](developer-guide.md) for details
2. Use the Axis SDK available in multiple languages
3. Start with sample templates in the [developer portal](https://developer.auxiliary.com/axis)
4. Join the developer community forum for support

### How do I sync my settings across multiple computers?

Enable settings sync:
1. Go to Settings → Cloud → "Enable Settings Sync"
2. Sign in with your Auxiliary account
3. Select which settings to sync
4. On your other computers, enable sync and sign in with the same account

## Licensing & Support

### Is Axis free to use?

Axis offers multiple pricing tiers:
- **Axis Basic**: Free for personal use with limited features
- **Axis Pro**: Subscription with full features for individual users
- **Axis Enterprise**: Corporate licensing with management features

See our [pricing page](https://auxiliary.com/axis/pricing) for details.

### How do I get support for Axis?

Support options include:
- In-app help: Type "I need help" or "Axis support"
- Documentation: [User Manual](user-manual.md) and guides
- Community forum: [community.auxiliary.com](https://community.auxiliary.com/axis)
- Email support: <axis-support@auxiliary.com>
- Premium support (for Pro/Enterprise): Live chat and phone support

### Can I use Axis on multiple computers?

- **Axis Basic**: Use on up to 2 devices with the same Microsoft account
- **Axis Pro**: Use on up to 5 devices with your subscription
- **Axis Enterprise**: Deployment based on your license agreement

### How do I uninstall Axis?

To uninstall Axis:
1. Go to Windows Settings → Apps → Apps & features
2. Find "Axis Desktop Assistant" and select "Uninstall"
3. Follow the uninstallation wizard
4. Optionally, delete remaining data in `%APPDATA%\Auxiliary\Axis\`

For more questions, contact our support team at <axis-support@auxiliary.com>.
