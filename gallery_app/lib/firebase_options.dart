// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDUjpcprFrzEqKIMd_fMr32w5gBTV7pFeI',
    appId: '1:592550849662:web:6e37b2690749e9a954fc2f',
    messagingSenderId: '592550849662',
    projectId: 'gallery-app-f9ff5',
    authDomain: 'gallery-app-f9ff5.firebaseapp.com',
    storageBucket: 'gallery-app-f9ff5.appspot.com',
    measurementId: 'G-KZ66199KLH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmQJHa9lV_VL2IJZJd2T75neBEmfkmDSI',
    appId: '1:592550849662:android:c6eb3997c519108e54fc2f',
    messagingSenderId: '592550849662',
    projectId: 'gallery-app-f9ff5',
    storageBucket: 'gallery-app-f9ff5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2neeTzkuvZol_bAtIkQZwkJ4hMJrvk6s',
    appId: '1:592550849662:ios:3d0abcddc2b9532954fc2f',
    messagingSenderId: '592550849662',
    projectId: 'gallery-app-f9ff5',
    storageBucket: 'gallery-app-f9ff5.appspot.com',
    iosBundleId: 'com.webappdeveloperbd.galleryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2neeTzkuvZol_bAtIkQZwkJ4hMJrvk6s',
    appId: '1:592550849662:ios:3d0abcddc2b9532954fc2f',
    messagingSenderId: '592550849662',
    projectId: 'gallery-app-f9ff5',
    storageBucket: 'gallery-app-f9ff5.appspot.com',
    iosBundleId: 'com.webappdeveloperbd.galleryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDUjpcprFrzEqKIMd_fMr32w5gBTV7pFeI',
    appId: '1:592550849662:web:754fde3398d1b7e654fc2f',
    messagingSenderId: '592550849662',
    projectId: 'gallery-app-f9ff5',
    authDomain: 'gallery-app-f9ff5.firebaseapp.com',
    storageBucket: 'gallery-app-f9ff5.appspot.com',
    measurementId: 'G-QQR975SBVC',
  );

}