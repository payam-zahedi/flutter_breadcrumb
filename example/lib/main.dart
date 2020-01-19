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
      body: Center(
        child: BreadCrumb.builder(
          itemCount: 12,
          builder: (index) {
            return BreadCrumbItem(
              content: Text('text'),
              color: Colors.red,
              padding: EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(4),
              disabledTextColor: Colors.green,
              textColor: Colors.yellow,
              border: BorderSide(color: Colors.blue),
              disableColor: Colors.deepPurple,
              splashColor: Colors.blue,
              onTap: index % 3 == 0
                  ? () {
                      print('item Clicked');
                    }
                  : null,
            );
          },
          divider: Icon(Icons.chevron_right),
          overflowType: WrapOverflow(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            direction: Axis.vertical
          ),
        ),
      ),
    );
  }
}
