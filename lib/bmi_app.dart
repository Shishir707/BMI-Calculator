import 'package:flutter/material.dart';

enum WeightType { kg, pound }

enum HeightType { m, cm, feetInch }

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  WeightType weightType = WeightType.kg;
  HeightType heightType = HeightType.m;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              'Know your health score with one tap',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 15),

          /// ====================== Weight Unit ==================
          Text(
            'Weight Unit',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SegmentedButton<WeightType>(
            segments: [
              const ButtonSegment<WeightType>(
                value: WeightType.kg,
                label: Text('Kg'),
              ),
              const ButtonSegment<WeightType>(
                value: WeightType.pound,
                label: Text('Pound'),
              ),
            ],
            selected: {weightType},
            onSelectionChanged: (value) => setState(() {
              weightType = value.first;
            }),
          ),
          SizedBox(height: 8,),
          if (weightType == WeightType.kg) ...[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (kg)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ] else ...[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Weight (pound)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
          SizedBox(height: 16),
          SizedBox(height: 16),

          /// ========================== Height Unit ==========================
          Text(
            'Height Unit',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SegmentedButton(
            segments: [
              ButtonSegment(value: HeightType.m, label: Text('M')),
              ButtonSegment(value: HeightType.cm, label: Text('CM')),
              ButtonSegment(
                value: HeightType.feetInch,
                label: Text('Feet/Inch'),
              ),
            ],
            selected: {heightType},
            onSelectionChanged: (value) => setState(() {
              heightType = value.first;
            }),
          ),
          SizedBox(height: 8,),
          if (heightType == HeightType.m) ...[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (m)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ] else if (heightType == HeightType.cm) ...[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Height (cm)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ] else ...[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Feet (')",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Inch (")',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Show Result',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Result :',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
