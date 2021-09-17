import 'dart:async';
import 'dart:ffi';

import 'package:flutter/services.dart';

class BarometerPlugin {
  static const MethodChannel _channel = const MethodChannel('barometer_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<double> get reading async {
    final double reading = await _channel.invokeMethod('getBarometer');
    return reading;
  }

  static Future<bool> initialize() async {
    final bool init = await _channel.invokeMethod('initializeBarometer');
    return init;
  }
}
