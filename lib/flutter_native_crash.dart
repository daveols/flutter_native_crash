
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNativeCrash {
  static const MethodChannel _channel =
      const MethodChannel('flutter_native_crash');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
