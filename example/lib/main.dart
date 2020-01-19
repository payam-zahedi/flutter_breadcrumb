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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BreadCrumb(
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
                  color: Colors.red,
                  disableColor: Colors.blue,
                  textColor: Colors.yellow,
                  padding: EdgeInsets.all(8),
                  disabledTextColor: Colors.white,
                  onTap: () {},
                ),
                BreadCrumbItem(
                  color: Colors.red,
                  disableColor: Colors.blue,
                  padding: EdgeInsets.all(8),
                  textColor: Colors.yellow,
                  disabledTextColor: Colors.white,
                  content: Text('text'),
                ),
              ],
              divider: Icon(Icons.chevron_right),
            ),
            BreadCrumb.builder(
              itemCount: 8,
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
            ),
          ],
        ),
      ),
    );
  }
}
