import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Breadcrump',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Breadcrump'),
      ),
      body: Container(
        child: BreadCrumb(
          items: [
            BreadCrumbItem(
              content: Text('text'),
              onTap: () {},
            ),
            BreadCrumbItem(
              content: Text('text'),
              onTap: () {},
            ),
            BreadCrumbItem(
              content: Text('text'),
              onTap: () {},
            ),
            BreadCrumbItem(
              content: Text('text'),
            ),
          ],
          divider: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
