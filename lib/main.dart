import 'package:flutter/material.dart';
import 'package:medical_webapp/screen/home_screen.dart';
import 'package:medical_webapp/screen_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: "App Making",
          home: HomePage(),
        );
      });
    });
  }
  }