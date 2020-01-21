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
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('BreadCrumb with Scrollable Overflow content'),
            BreadCrumb(
              items: <BreadCrumbItem>[
                BreadCrumbItem(
                  content: Text(
                    'Flutter Web Site',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onTap: () {},
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
                BreadCrumbItem(
                  content: Text(
                    'Menu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onTap: () {},
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
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
                    style: TextStyle(fontSize: 16),
                  ),
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
              ],
              divider: Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
              overflow: ScrollableOverflow(),
            ),

            SizedBox(height: 12),
            Text('BreadCrumb with Wrapable Overflow content'),
            BreadCrumb(
              items: <BreadCrumbItem>[
                BreadCrumbItem(
                  content: Text(
                    'Flutter Web Site',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onTap: () {},
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
                BreadCrumbItem(
                  content: Text(
                    'Menu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onTap: () {},
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
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
                    style: TextStyle(fontSize: 16),
                  ),
                  textColor: Colors.blue,
                  disabledTextColor: Colors.grey,
                ),
              ],
              divider: Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
              overflow: WrapOverflow(),
            ),
          ],
        ),
      ),
    );
  }
}
