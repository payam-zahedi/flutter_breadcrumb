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
    final titleTextStyle = Theme.of(context).textTheme.title.copyWith(
          color: Colors.black54,
          fontSize: 16,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Breadcrump'),
      ),
      body: DefaultTextStyle(
        style: titleTextStyle,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('BreadCrumb with Scrollable Overflow content:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      Const.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: Colors.grey,
                    onTap: index < 3 ? () {} : null,
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb with Wrapable Overflow content:'),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      Const.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: Colors.grey,
                    onTap: index < 3 ? () {} : null,
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: WrapOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb Home Icon:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: index != 0
                        ? Text(
                            Const.breadcrumbs[index],
                            style: TextStyle(
                              fontWeight: index < 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Const.breadcrumbsIcon[index]),
                              Text(
                                Const.breadcrumbs[index],
                                style: TextStyle(
                                  fontWeight: index < 3
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: Colors.grey,
                    onTap: index < 3 ? () {} : null,
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb Icons Items:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Icon(
                      Const.breadcrumbsIcon[index],
                      color: Colors.white,
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                    disableColor: Colors.blue,
                    splashColor: Colors.grey,
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                    padding: EdgeInsets.all(6),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb with Custom Divider:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      Const.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: Colors.grey,
                    onTap: index < 3 ? () {} : null,
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb with Complecitated Items:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Const.breadcrumbsIcon[index],
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            Const.breadcrumbs[index],
                            style: TextStyle(
                              fontWeight: index < 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                    disableColor: Colors.blue,
                    splashColor: Colors.grey,
                    textColor: Colors.white,
                    disabledTextColor: Colors.grey,
                    padding: EdgeInsets.all(6),
                    margin: EdgeInsets.symmetric(vertical: 4),
                  ),
                  divider: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              Divider(height: 16, color: Colors.black45),
              SizedBox(height: 12),
              Text('BreadCrumb with Complecitated Items:'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blueGrey[100],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          color: Colors.black38)
                    ]),
                padding: EdgeInsets.all(8),
                child: BreadCrumb.builder(
                  itemCount: Const.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: index == 0
                        ? Container(
                            decoration: BoxDecoration(

                              color: Colors.black12,borderRadius: BorderRadius.circular(4),

                            ),
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                            child: Text(
                              '⬤ ⬤ ⬤',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 7),
                            ),
                          )
                        : Text(
                            Const.breadcrumbs[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: Colors.grey,
                    onTap: () {},
                    textColor: Colors.blue,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Const {
  static const List<String> breadcrumbs = [
    'Home',
    'Menu',
    'Flutter',
    'Doc',
    'Breadcrumb',
    'Package',
    'Sample',
  ];
  static const List<IconData> breadcrumbsIcon = [
    Icons.home,
    Icons.menu,
    Icons.flash_on,
    Icons.library_books,
    Icons.fastfood,
    Icons.inbox,
    Icons.mobile_screen_share,
  ];
}
