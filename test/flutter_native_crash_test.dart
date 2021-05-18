import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_native_crash/flutter_native_crash.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_native_crash');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('crash', () async {
    final result = FlutterNativeCrash.crash();
    expect(result, null);
  });
}
