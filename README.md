# flutter_device_name

A Flutter for retrieving the user's defined device name. Currently works only on Android. iOS support is planned.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  flutter_device_name: ^{latest_version}
```

In your library add the following import:

```dart
import 'package:flutter_device_name/flutter_device_name.dart';
```

## Usage

Import `package:flutter_device_name/flutter_device_name.dart`, instantiate `DeviceName` and use the `getName()` function.

```dart
import 'package:device_name/device_name.dart';

Future<void> main() async {
  final plugin = DeviceName();
  final deviceName = await plugin.getName();
  
  print('Device name: ${deviceName ?? 'Unknown'}');
  // Device name: Feliphe's Galaxy S20
}
```