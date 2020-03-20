import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:named_shared_preferences/named_shared_preferences.dart';

void main() {
  const MethodChannel channel = MethodChannel('named_shared_preferences');

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
    expect(await NamedSharedPreferences.platformVersion, '42');
  });
}
