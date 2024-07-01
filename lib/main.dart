import 'package:flutter/material.dart';
import 'package:mybook/UI/splash_screan/presentaion/splash_srean.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      home: SplashView());
  }
}
