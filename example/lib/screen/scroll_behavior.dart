import 'package:example/res/res.dart';
import 'package:flutter/material.dart';

class ScrollBehavior extends StatefulWidget {
  @override
  _ScrollBehaviorState createState() => _ScrollBehaviorState();
}

class _ScrollBehaviorState extends State<ScrollBehavior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ExampleStrings.scrollBehavior),
      ),
    );
  }
}
