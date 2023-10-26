// import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutotp/home.dart';
import 'package:flutotp/phone.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'otp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(MaterialApp(
      initialRoute: 'phone',
      routes: { 'phone': (context) => const MyPhone(),
        'otp': (context) => MyOtp(),
        'home': (context) => MyHome(),
      }
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPhone(), // Replace MyPhone with your initial screen widget
    );
  }
}