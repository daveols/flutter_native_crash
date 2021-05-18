# flutter_native_crash

Sometimes your app just needs to die, simply.

This plugin provides a single method to throw a native exception on iOS and Android that will crash the application.

Use when:
- Your app handles sensitive data and is running on a rooted device 🔒
- You catch an error that is terminal to your app's UX 🐞
- You're testing error monitoring and reporting tooling 🚧
- You're lazy and/or don't like polluting your app's method channel 🧘

## Usage

```dart
import 'package:flutter_native_crash/flutter_native_crash.dart';

FlutterNativeCrash.crash();
```
