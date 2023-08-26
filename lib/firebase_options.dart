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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyADRDkWLPTFnshsAI3SwAw_qZR0hvVVqhM',
    appId: '1:639367069371:web:8d01ed85d5498b366ef39e',
    messagingSenderId: '639367069371',
    projectId: 'weatherapp-fd5c8',
    authDomain: 'weatherapp-fd5c8.firebaseapp.com',
    databaseURL: 'https://weatherapp-fd5c8-default-rtdb.firebaseio.com',
    storageBucket: 'weatherapp-fd5c8.appspot.com',
    measurementId: 'G-0CGFBZLZ1Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJ36abiDe-L_ag9nQBhBjpDoCuRFGIZro',
    appId: '1:639367069371:android:99b4ce6df7ec29176ef39e',
    messagingSenderId: '639367069371',
    projectId: 'weatherapp-fd5c8',
    databaseURL: 'https://weatherapp-fd5c8-default-rtdb.firebaseio.com',
    storageBucket: 'weatherapp-fd5c8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4nHaofVS4T3dyqTjFr3qgk_0P0OTIcEc',
    appId: '1:639367069371:ios:d6ec288dfddf45656ef39e',
    messagingSenderId: '639367069371',
    projectId: 'weatherapp-fd5c8',
    databaseURL: 'https://weatherapp-fd5c8-default-rtdb.firebaseio.com',
    storageBucket: 'weatherapp-fd5c8.appspot.com',
    iosClientId: '639367069371-mlb1pqg7eeegq6ee96sub67rstjf8tqh.apps.googleusercontent.com',
    iosBundleId: 'com.example.weatherApp',
  );
}