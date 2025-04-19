# Axis Developer Guide

This guide provides detailed information for developers who want to build integrations, extensions, and custom solutions with Axis.

## Development Environment Setup

### Prerequisites

Before you begin development with Axis, ensure you have:

- Windows 10 (1903) or newer
- Axis application (version 1.0 or later) installed
- Developer mode enabled in Windows settings
- Node.js 18.x or newer (for JavaScript development)
- Visual Studio 2019 or newer (for .NET development)
- Python 3.9 or newer (for Python development)

### Developer Mode

To enable developer features in Axis:

1. Open Axis Settings
2. Navigate to Advanced → Developer Options
3. Toggle "Developer Mode" to ON
4. Restart Axis when prompted

### SDK Installation

Install the appropriate SDK for your preferred language:

**JavaScript/TypeScript:**
```bash
npm install @auxiliary/axis-sdk
```

**Python:**
```bash
pip install auxiliary-axis-sdk
```

**.NET:**
```bash
dotnet add package Auxiliary.Axis.SDK
```

**Java:**
```bash
mvn install:install-file -Dfile=axis-sdk-1.0.jar -DgroupId=com.auxiliary -DartifactId=axis-sdk -Dversion=1.0
```

### Developer Tools

Axis includes several developer tools:

1. **Axis Console**: Access via Settings → Developer → Console
2. **API Explorer**: Access via Settings → Developer → API Explorer
3. **Context Inspector**: Access via Settings → Developer → Context Inspector
4. **Performance Monitor**: Access via Settings → Developer → Performance

## Architecture Overview

Axis follows a modular architecture:

