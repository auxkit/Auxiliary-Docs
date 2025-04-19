# Axis API Documentation

This documentation covers the Axis API, which allows developers to integrate with and extend the Axis desktop assistant.

## API Overview

Axis provides several integration points:

1. **Command API**: Create custom commands and actions
2. **Context API**: Access and modify the assistant's context
3. **UI API**: Customize and extend the user interface
4. **System API**: Access controlled system resources
5. **MCP Client API**: Interact with the underlying MCP protocol

## Authentication and Access

### API Keys

To use the Axis API, you'll need to generate API keys:

1. Open Axis Settings → Developer → API Keys
2. Click "Generate New Key"
3. Set permission scopes for the key
4. Store the key securely; it won't be shown again

### Authentication Methods

```javascript
// Authentication with API key
const axis = new AxisClient({
  apiKey: "your-api-key-here",
  appId: "your-app-identifier"
});

// Alternative: authentication with OAuth
const axis = new AxisClient();
await axis.authenticate({
  clientId: "your-client-id",
  redirectUri: "your-redirect-uri",
  scopes: ["commands", "context", "system"]
});
```

## Command API

The Command API allows you to create, manage, and trigger custom commands.

### Creating Commands

```javascript
// Register a simple command
await axis.commands.register({
  trigger: "organize screenshots",
  description: "Organizes screenshot files into dated folders",
  handler: async (ctx) => {
    const screenshotsPath = await axis.system.getPath("screenshots");
    // Implementation details...
    return {
      status: "success",
      message: "Screenshots organized into dated folders"
    };
  }
});

// Register a command with parameters
await axis.commands.register({
  trigger: "remind me to {task} at {time}",
  description: "Sets a reminder for a specific task",
  parameters: {
    task: {
      type: "string",
      description: "The task to be reminded about"
    },
    time: {
      type: "datetime",
      description: "When to be reminded"
    }
  },
  handler: async (ctx, params) => {
    // Implementation using params.task and params.time
  }
});
```

### Triggering Commands

```javascript
// Trigger a command programmatically
const result = await axis.commands.trigger("organize screenshots");

// Trigger with parameters
const result = await axis.commands.trigger("remind me to", {
  task: "review documentation",
  time: new Date(2024, 6, 15, 14, 0, 0)
});
```

## Context API

The Context API provides access to the assistant's current context.

### Accessing Context

```javascript
// Get the current context
const context = await axis.context.get();

// Get specific context elements
const activeApp = await axis.context.get("activeApplication");
const recentFiles = await axis.context.get("recentFiles");
const selectedText = await axis.context.get("selectedText");
```

### Modifying Context

```javascript
// Set context elements
await axis.context.set("currentProject", {
  name: "Documentation Update",
  deadline: "2024-07-01",
  priority: "high"
});

// Clear specific context
await axis.context.clear("temporaryData");

// Clear all context (use with caution)
await axis.context.reset();
```

## UI API

The UI API allows customization of the Axis interface.

### Notifications

```javascript
// Display a notification
await axis.ui.notify({
  title: "Process Complete",
  message: "Your files have been processed successfully",
  type: "success", // "info", "warning", "error"
  duration: 5000 // milliseconds
});

// With action buttons
await axis.ui.notify({
  title: "Backup Available",
  message: "Would you like to restore from the latest backup?",
  actions: [
    {
      label: "Restore",
      handler: () => axis.commands.trigger("restore backup")
    },
    {
      label: "Ignore",
      handler: () => {}
    }
  ]
});
```

### Custom Panels

```javascript
// Register a custom panel
const panelId = await axis.ui.registerPanel({
  title: "Project Status",
  icon: "project-icon.png",
  component: ProjectStatusPanel, // Your component
  position: "sidebar", // "sidebar", "main", "floating"
  defaultVisible: false
});

// Show/hide panel
await axis.ui.showPanel(panelId);
await axis.ui.hidePanel(panelId);
```

## System API

The System API provides controlled access to system resources.

### File Operations

```javascript
// Access files (with proper permissions)
const files = await axis.system.findFiles({
  directory: "Documents",
  pattern: "*.docx",
  modifiedAfter: new Date(2024, 0, 1)
});

// Read file content
const content = await axis.system.readFile("/path/to/file.txt");

// Write to file
await axis.system.writeFile("/path/to/output.txt", "File content");
```

### Application Control

```javascript
// Launch application
await axis.system.launchApplication("Excel", {
  filePath: "/path/to/spreadsheet.xlsx"
});

// Get running applications
const apps = await axis.system.getRunningApplications();

// Send keys to active application
await axis.system.sendKeys("Ctrl+S");
```

## MCP Client API

The MCP Client API provides direct access to the Model Context Protocol capabilities.

### Context Exchange

```javascript
// Send context to the MCP server
const response = await axis.mcp.exchangeContext({
  text: "User is working on financial analysis in Excel",
  files: ["quarterly_report.xlsx"],
  metadata: {
    domain: "financial",
    intent: "data-analysis"
  }
});

// Process the response
console.log(response.suggestions);
```

### Tool Execution

```javascript
// Execute a tool through MCP
const result = await axis.mcp.executeTool("data-processor", {
  operation: "summarize",
  input: await axis.system.readFile("data.csv"),
  parameters: {
    format: "table",
    metrics: ["mean", "median", "mode"]
  }
});
```

## Error Handling

All API methods return promises that may reject with structured errors:

```javascript
try {
  await axis.commands.trigger("complex operation");
} catch (error) {
  console.error(`Error: ${error.code} - ${error.message}`);
  
  // Error types
  if (error.code === "PERMISSION_DENIED") {
    // Handle permission issues
  } else if (error.code === "RESOURCE_NOT_FOUND") {
    // Handle missing resources
  }
}
```

## Rate Limits and Quotas

API usage is subject to the following limits:

| API Category | Free Tier | Professional Tier | Enterprise Tier |
|--------------|-----------|-------------------|-----------------|
| Commands     | 100/hour  | 1,000/hour        | Customizable    |
| Context      | 500/hour  | 5,000/hour        | Customizable    |
| System       | 50/hour   | 500/hour          | Customizable    |
| MCP Client   | 200/hour  | 2,000/hour        | Customizable    |

Exceeding these limits will result in `RATE_LIMIT_EXCEEDED` errors.

## SDK Downloads

SDKs are available for multiple languages:

- [JavaScript/TypeScript](https://github.com/auxiliary/axis-js-sdk)
- [Python](https://github.com/auxiliary/axis-python-sdk)
- [C#/.NET](https://github.com/auxiliary/axis-dotnet-sdk)
- [Java](https://github.com/auxiliary/axis-java-sdk)

## API Versioning

The current API version is v1.0. Version information should be included in API calls:

```javascript
const axis = new AxisClient({
  apiKey: "your-api-key",
  version: "v1"
});
```

API changes follow semantic versioning principles. Breaking changes will only be introduced in major version updates.

## Further Resources

- [API Playground](https://developer.auxiliary.com/axis/playground)
- [Sample Applications](https://github.com/auxiliary/axis-samples)
- [API Status Dashboard](https://status.auxiliary.com/api)
- [Developer Community Forum](https://forum.auxiliary.com/axis-dev)

For API support, contact <axis-api-support@auxiliary.com>.
