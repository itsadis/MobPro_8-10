import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _box(), // Corrected function call
        Column(
          children: const [
            Text("title"),
            Text("Description"),
          ],
        ),
        _box(), // Corrected function call
        Text('title 2'),
      ], // Added missing closing bracket
    ); // Row
  }
}

Widget _box() { // Added missing return type Widget
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.grey,
      border: Border.all(),
    ),
  );
}
