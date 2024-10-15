import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'alarm_exactly_android_12_method_channel.dart';

abstract class AlarmExactlyAndroid12Platform extends PlatformInterface {
  /// Constructs a AlarmExactlyAndroid12Platform.
  AlarmExactlyAndroid12Platform() : super(token: _token);

  static final Object _token = Object();

  static AlarmExactlyAndroid12Platform _instance =
      MethodChannelAlarmExactlyAndroid12();

  /// The default instance of [AlarmExactlyAndroid12Platform] to use.
  ///
  /// Defaults to [MethodChannelAlarmExactlyAndroid12].
  static AlarmExactlyAndroid12Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AlarmExactlyAndroid12Platform] when
  /// they register themselves.
  static set instance(AlarmExactlyAndroid12Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> request() async {
    return true;
  }

  Future<bool?> isGranted() async {
    return true;
  }
}
