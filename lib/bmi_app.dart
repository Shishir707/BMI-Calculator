import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Weight (KG)',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          )
        ],
      ),
    );
  }
}
