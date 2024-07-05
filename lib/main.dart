import 'package:flutter/material.dart';
import 'package:mybook/utils/constants.dart';
import 'package:mybook/utils/routes.dart';

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
  
    return  MaterialApp.router(
      theme:  ThemeData(
        primaryColor: Colors.white,
       scaffoldBackgroundColor:  const Color(backgroundColor0)),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.approutes,
      
    );
  }
}
