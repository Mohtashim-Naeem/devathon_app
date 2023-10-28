import 'package:devathon_app/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DevathonApp());
}

class DevathonApp extends StatelessWidget {
  const DevathonApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
