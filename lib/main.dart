import 'package:flutter/material.dart';
import 'presentation/screens/auth/welcome_page.dart';

void main() {
  runApp(const UnistudiousApp());
}

class UnistudiousApp extends StatelessWidget {
  const UnistudiousApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unistudious',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepPurple,
      ), 
      home: const WelcomePage(),
    );
  }
}
