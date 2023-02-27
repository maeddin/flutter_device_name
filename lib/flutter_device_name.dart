
import 'flutter_device_name_platform_interface.dart';

class DeviceName {

  /// Returns the user-defined device name or null if not available.
  Future<String?> getName() {
    return FlutterDeviceNamePlatform.instance.getDeviceName();
  }
}
