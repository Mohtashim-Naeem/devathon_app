import 'package:devathon_app/views/all_profiles.dart';
import 'package:devathon_app/views/card.dart';
import 'package:devathon_app/views/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DevathonApp());
}

class DevathonApp extends StatelessWidget {
  const DevathonApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      // home: Profiles(),
      // home: CustomCard(),
    );
  }
}
