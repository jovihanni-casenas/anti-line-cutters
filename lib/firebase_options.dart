// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCtujjvDONhxEaDOMExp5nbb7hO6rwPRes',
    appId: '1:727261719857:web:c6cdf9773a09c8067e1410',
    messagingSenderId: '727261719857',
    projectId: 'anti-line-cutters-backend',
    authDomain: 'anti-line-cutters-backend.firebaseapp.com',
    storageBucket: 'anti-line-cutters-backend.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0c2uOw08SuoO2D3AWIOn9RpolwmjWdm8',
    appId: '1:727261719857:android:d3b7d10502205a877e1410',
    messagingSenderId: '727261719857',
    projectId: 'anti-line-cutters-backend',
    storageBucket: 'anti-line-cutters-backend.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPbtwbcBVxZHw7tXmG05nGDk3EE7d15A0',
    appId: '1:727261719857:ios:294d56e636bd27c37e1410',
    messagingSenderId: '727261719857',
    projectId: 'anti-line-cutters-backend',
    storageBucket: 'anti-line-cutters-backend.appspot.com',
    iosClientId: '727261719857-gai7rm44hn3dtrri8vrs0m9mcetato17.apps.googleusercontent.com',
    iosBundleId: 'com.example.antiLineCuttersFrontend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPbtwbcBVxZHw7tXmG05nGDk3EE7d15A0',
    appId: '1:727261719857:ios:294d56e636bd27c37e1410',
    messagingSenderId: '727261719857',
    projectId: 'anti-line-cutters-backend',
    storageBucket: 'anti-line-cutters-backend.appspot.com',
    iosClientId: '727261719857-gai7rm44hn3dtrri8vrs0m9mcetato17.apps.googleusercontent.com',
    iosBundleId: 'com.example.antiLineCuttersFrontend',
  );
}
