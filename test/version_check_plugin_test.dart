import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:version_check_plugin/version_check_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('version_check_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await VersionCheckPlugin.platformVersion, '42');
  });
}
