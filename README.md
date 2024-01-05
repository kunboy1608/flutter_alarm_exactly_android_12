# alarm_exactly_android_12

Flutter package requests permission to send notifications at specific scheduled times.

## How to use it
Add code below into file pubspec.yaml
```
alarm_exactly_android_12:
    git: 
        url: https://github.com/kunboy1608/flutter_alarm_exactly_android_12.git
        ref: master # branch name
```
Add text below into /android/app/src/main/AndroidManifest.xml in your project.
```
<uses-permission android:name="android.permission.SCHEDULE_EXACT_ALARM"/>
```

All done. Good luck.

## Example
```
git clone https://github.com/kunboy1608/flutter_alarm_exactly_android_12.git
cd flutter_alarm_exactly_android_12/example
flutter run
```
