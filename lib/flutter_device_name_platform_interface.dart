import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_device_name_method_channel.dart';

abstract class FlutterDeviceNamePlatform extends PlatformInterface {
  /// Constructs a FlutterDeviceNamePlatform.
  FlutterDeviceNamePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDeviceNamePlatform _instance = MethodChannelFlutterDeviceName();

  /// The default instance of [FlutterDeviceNamePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDeviceName].
  static FlutterDeviceNamePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDeviceNamePlatform] when
  /// they register themselves.
  static set instance(FlutterDeviceNamePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getDeviceName() {
    throw UnimplementedError('getDeviceName() has not been implemented.');
  }
}
