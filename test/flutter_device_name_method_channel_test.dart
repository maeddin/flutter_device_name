import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_device_name/flutter_device_name_method_channel.dart';

void main() {
  MethodChannelFlutterDeviceName platform = MethodChannelFlutterDeviceName();
  const MethodChannel channel = MethodChannel('flutter_device_name');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'Feliphe\'s Galaxy S20';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getDeviceName', () async {
    expect(await platform.getDeviceName(), 'Feliphe\'s Galaxy S20');
  });
}
