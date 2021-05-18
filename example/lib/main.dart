import 'package:flutter/material.dart';
import 'package:flutter_native_crash/flutter_native_crash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Crash app'),
            onPressed: FlutterNativeCrash.crash,
          ),
        ),
      ),
    );
  }
}
