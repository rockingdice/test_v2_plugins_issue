
import 'dart:async';

import 'package:flutter/services.dart';

class TestV2PluginsIssue {
  static const MethodChannel _channel =
      const MethodChannel('test_v2_plugins_issue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
