# Xcode Setup Instructions for GameSphere

## Build Configuration

The GameSphere Xcode project includes the complete arcade game collection. Follow these steps to ensure everything builds correctly:

### Step 1: Add index.html to Build Target

The `index.html` file must be added to the "Copy Bundle Resources" build phase:

1. **In Xcode**:
   - Select the `GameSphere` project in the navigator
   - Select the `GameSphere` target
   - Go to the **Build Phases** tab
   - Expand **Copy Bundle Resources**
   - Click the **+** button and add `GameSphere/index.html`

   **OR**

2. **Select the file directly**:
   - In Project Navigator, select `GameSphere/index.html`
   - In File Inspector (right panel), ensure "GameSphere" is checked under **Target Membership**

### Step 2: Verify Deployment Target

- **iOS**: Minimum deployment target iOS 14.0 or later (for WKWebView support)
- **macOS**: Minimum deployment target macOS 10.15 or later

### Step 3: Build and Run

```
Cmd + B  // Build
Cmd + R  // Run on simulator or device
```

## What Happens at Runtime

1. **iOS**: The app loads `index.html` from the app bundle
2. **Fallback**: If the file isn't found, it loads from GitHub Pages: https://kashmoney1192.github.io/gamesphere/
3. **macOS**: Shows a link to the web version

## Files Included

- `ContentView.swift` - SwiftUI view with WKWebView integration
- `GameSphereApp.swift` - App entry point
- `GameSphere/index.html` - Complete arcade game collection

## Troubleshooting

**Build Error: "Cannot find type 'UIViewRepresentable'"**
- Ensure minimum iOS deployment target is 14.0+

**WKWebView not displaying games**
- Verify index.html is in "Copy Bundle Resources" build phase
- Check Console for any JavaScript errors

**Need Internet?**
- No! Games run from the bundle. Falls back to web version if bundle fails.

