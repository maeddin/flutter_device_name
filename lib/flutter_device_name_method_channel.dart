import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_device_name_platform_interface.dart';

/// An implementation of [FlutterDeviceNamePlatform] that uses method channels.
class MethodChannelFlutterDeviceName extends FlutterDeviceNamePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_device_name');

  @override
  Future<String?> getDeviceName() async {
    final version = await methodChannel.invokeMethod<String>('getDeviceName');
    return version;
  }
}
