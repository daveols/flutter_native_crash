import Flutter
import UIKit

public class SwiftFlutterNativeCrashPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_native_crash", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterNativeCrashPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) throws {
    if call.method == "crash" {
        NSException(
            name: NSExceptionName(rawValue: "FlutterNativeCrashException"),
            reason:"This is a crash caused by calling .crash() in Dart.",
            userInfo:nil
          )
          .raise()
    }
  }
}
