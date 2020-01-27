import 'package:example/res/res.dart';
import 'package:example/screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ExampleStrings.breadcrumb,
      theme: ThemeData(
        primarySwatch: ExampleColors.primary,
        accentColor: ExampleColors.accent,
        backgroundColor: ExampleColors.background,
        scaffoldBackgroundColor: ExampleColors.background,
        buttonTheme: ButtonThemeData(
          minWidth: 40,
          height: 40,
          buttonColor: ExampleColors.primary,
          splashColor: ExampleColors.accent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          textTheme: ButtonTextTheme.normal,
          colorScheme: ColorScheme.dark(),
        ),
        textTheme: TextTheme(
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      home: Home(),
    );
  }
}
