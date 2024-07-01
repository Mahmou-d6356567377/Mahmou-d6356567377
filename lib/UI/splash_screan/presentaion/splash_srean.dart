import 'package:flutter/material.dart';
import 'package:mybook/utils/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(backgroundColor6),
               Color(backgroundColor8),
              Color(backgroundColor9),
              Color(backgroundColor11),
            
            ]
          ),
        ),
      ),
    );
  }
}