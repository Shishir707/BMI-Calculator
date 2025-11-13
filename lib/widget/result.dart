import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.cardColor,
    required this.bmiResult,
    required this.bmiStatus,
    required this.bmiSuggestion,
  });

  final Color cardColor;
  final String? bmiResult;
  final String? bmiStatus;
  final String? bmiSuggestion;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '---- BMI Result ----',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text('Your BMI is : $bmiResult'),
            Text('According to BMI You are Now $bmiStatus'),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info),
                SizedBox(width: 5),
                Text(
                  'Suggestion For You',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text('$bmiSuggestion'),
          ],
        ),
      ),
    );
  }
}