import 'package:flutter/material.dart';
import 'package:untitled2/widgets/MainBodyPage.dart';
import 'package:untitled2/widgets/hola.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: MainBody(),
      ),
    );
  }
}
