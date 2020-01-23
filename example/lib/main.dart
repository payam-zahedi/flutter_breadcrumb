import 'package:example/res/res.dart';
import 'package:example/screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Breadcrump',
      theme: ThemeData(
        primarySwatch: ExampleColors.primary,
        accentColor: ExampleColors.accent,
        backgroundColor: ExampleColors.background,
        scaffoldBackgroundColor: ExampleColors.background
      ),
      home: Home(),
    );
  }
}



