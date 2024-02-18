import 'package:celengan_ayam/Model/Utils/firebase_database.dart';
import 'package:celengan_ayam/Model/Utils/firebase_options.dart';
import 'package:flutter/material.dart';

import '../Model/boxes.dart';
import '../View/Splash_Page/splash_page.dart';

import 'package:celengan_ayam/testing.dart';

// S: we used async in the main function because we want to continuously connecting to the firebase database
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // S: start the firebase
  await FirebaseService.initialize(
    DefaultFirebaseOptions.currentPlatform
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // home: SplashPage() // J: application will goto splash page first
      home: Testing(),
    );
  }
}
