import 'package:coach_app/AppBarBottom.dart';
import 'package:coach_app/screens/training/trainingScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrainingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
