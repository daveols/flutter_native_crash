import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNativeCrash {
  static const MethodChannel _channel =
      const MethodChannel('flutter_native_crash');

  static Future<void> crash() async {
    _channel.invokeMethod('crash');
  }
}
