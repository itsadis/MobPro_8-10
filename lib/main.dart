import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/sample_column_row.dart';
import 'package:flutter_application_10/widgets/sample_container.dart';
import 'package:flutter_application_10/widgets/sample_image.dart';
import 'package:flutter_application_10/widgets/sample_listview.dart';
import 'package:flutter_application_10/widgets/sample_padding.dart';
import 'package:flutter_application_10/widgets/sample_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: SampleColumnRow(),
    );
  }
}
