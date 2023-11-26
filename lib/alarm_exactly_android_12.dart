
import 'alarm_exactly_android_12_platform_interface.dart';

class AlarmExactlyAndroid12 {
  Future<bool?> request() {
    return AlarmExactlyAndroid12Platform.instance.request();
  }

  Future<bool?> isGranted() {
    return AlarmExactlyAndroid12Platform.instance.isGranted();
  }
}
