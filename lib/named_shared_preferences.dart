import 'dart:async';

import 'package:flutter/services.dart';

class NamedSharedPreferences {
  static const MethodChannel _channel =
      const MethodChannel('named_shared_preferences');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get token async {
    final String token = await _channel.invokeMethod('getToken');
    return token;
  }

  static Future<bool> setToken() async {
    return _channel.invokeMethod('setToken')??false;
  }
}
