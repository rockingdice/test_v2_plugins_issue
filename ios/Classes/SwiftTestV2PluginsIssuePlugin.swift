import Flutter
import UIKit

public class SwiftTestV2PluginsIssuePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test_v2_plugins_issue", binaryMessenger: registrar.messenger())
    let instance = SwiftTestV2PluginsIssuePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
