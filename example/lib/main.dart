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
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: BreadCrumb(
          items: <BreadCrumbItem>[
            BreadCrumbItem(
              content: Text(
                'Docs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onTap: () {},
              textColor: Colors.blue,
              disabledTextColor: Colors.grey,
            ),
            BreadCrumbItem(
              content: Text(
                'Cookbook',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onTap: () {},
              textColor: Colors.blue,
              disabledTextColor: Colors.grey,
            ),
            BreadCrumbItem(
              content: Text(
                'Forms',
                style: TextStyle( fontSize: 16),
              ),
              textColor: Colors.blue,
              disabledTextColor: Colors.grey,
            ),
          ],
          divider: Icon(Icons.chevron_right,color: Colors.grey,),
          overflow: WrapOverflow(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
