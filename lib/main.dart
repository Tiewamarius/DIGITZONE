import 'package:digitzone/pages/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'pages/onBoarding.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home: Onboarding(),
    );
  }
}
class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      
    );
  }
}