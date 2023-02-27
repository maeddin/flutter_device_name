import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_device_name/flutter_device_name.dart';
import 'package:flutter_device_name/flutter_device_name_platform_interface.dart';
import 'package:flutter_device_name/flutter_device_name_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDeviceNamePlatform
    with MockPlatformInterfaceMixin
    implements FlutterDeviceNamePlatform {

  @override
  Future<String?> getDeviceName() => Future.value('Feliphe\'s Galaxy S20');
}

void main() {
  final FlutterDeviceNamePlatform initialPlatform = FlutterDeviceNamePlatform.instance;

  test('$MethodChannelFlutterDeviceName is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDeviceName>());
  });

  test('getDeviceName', () async {
    DeviceName flutterDeviceNamePlugin = DeviceName();
    MockFlutterDeviceNamePlatform fakePlatform = MockFlutterDeviceNamePlatform();
    FlutterDeviceNamePlatform.instance = fakePlatform;

    expect(await flutterDeviceNamePlugin.getName(), 'Feliphe\'s Galaxy S20');
  });
}
