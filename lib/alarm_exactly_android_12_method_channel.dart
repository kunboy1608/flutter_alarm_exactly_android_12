import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'alarm_exactly_android_12_platform_interface.dart';

/// An implementation of [AlarmExactlyAndroid12Platform] that uses method channels.
class MethodChannelAlarmExactlyAndroid12 extends AlarmExactlyAndroid12Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('alarm_exactly_android_12');

  @override
  Future<bool?> request() async {
    if (kIsWeb || !Platform.isAndroid){
      return true;
    }
    final result = await methodChannel.invokeMethod<bool>('request');
    return result;
  }

  @override
  Future<bool?> isGranted() async {
    if (kIsWeb || !Platform.isAndroid){
      return true;
    }
    final result = await methodChannel.invokeMethod<bool>('isGranted');
    return result;
  }
}
