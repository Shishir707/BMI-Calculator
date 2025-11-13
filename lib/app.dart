import 'package:flutter/material.dart';
import 'bmi_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: BmiApp(),
    );
  }
}
