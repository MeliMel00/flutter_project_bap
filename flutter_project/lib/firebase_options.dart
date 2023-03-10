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
    apiKey: 'AIzaSyA0A57YYefEuRZ8Rx3mfxN6JVoKOKJ4J6A',
    appId: '1:925390832297:web:55d920ee544ec49f165fb8',
    messagingSenderId: '925390832297',
    projectId: 'dorsetproject-ef457',
    authDomain: 'dorsetproject-ef457.firebaseapp.com',
    storageBucket: 'dorsetproject-ef457.appspot.com',
    measurementId: 'G-YD5ECPKZWP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjqE3fEKi44lxwh4U2093OtJ3IpJfP9h8',
    appId: '1:925390832297:android:24ad7310e438526a165fb8',
    messagingSenderId: '925390832297',
    projectId: 'dorsetproject-ef457',
    storageBucket: 'dorsetproject-ef457.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBTn70KL4fZN21SIXfVMjO3jIYcAih1O0',
    appId: '1:925390832297:ios:3489fe46acf959e8165fb8',
    messagingSenderId: '925390832297',
    projectId: 'dorsetproject-ef457',
    storageBucket: 'dorsetproject-ef457.appspot.com',
    iosClientId: '925390832297-7f334to3gcjmq8q6kgf5708jchdgblit.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBTn70KL4fZN21SIXfVMjO3jIYcAih1O0',
    appId: '1:925390832297:ios:3489fe46acf959e8165fb8',
    messagingSenderId: '925390832297',
    projectId: 'dorsetproject-ef457',
    storageBucket: 'dorsetproject-ef457.appspot.com',
    iosClientId: '925390832297-7f334to3gcjmq8q6kgf5708jchdgblit.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterProject',
  );
}
