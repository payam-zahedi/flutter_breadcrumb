import 'package:example/res/const.dart';
import 'package:example/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class ShowCases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.title.copyWith(
          color: Colors.black54,
          fontSize: 16,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(ExampleStrings.showcases),
      ),
      body: DefaultTextStyle(
        style: titleTextStyle,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ShowcaseItem(
                title: 'BreadCrumb with Scrollable Overflow content:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      ExampleConst.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: ExampleColors.accent,
                    onTap: index < 3 ? () {} : null,
                    textColor: ExampleColors.primary,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              ShowcaseItem(
                title: 'BreadCrumb with Wrapable Overflow content:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      ExampleConst.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: ExampleColors.accent,
                    onTap: index < 3 ? () {} : null,
                    textColor: ExampleColors.primary,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: WrapOverflow(),
                ),
              ),
              ShowcaseItem(
                title: 'BreadCrumb Home Icon:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: index != 0
                        ? Text(
                            ExampleConst.breadcrumbs[index],
                            style: TextStyle(
                              fontWeight: index < 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(ExampleConst.breadcrumbsIcon[index]),
                              Text(
                                ExampleConst.breadcrumbs[index],
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
                    splashColor: ExampleColors.accent,
                    onTap: index < 3 ? () {} : null,
                    textColor: ExampleColors.primary,
                    disabledTextColor: Colors.grey,
                  ),
                  divider: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  overflow: ScrollableOverflow(),
                ),
              ),
              ShowcaseItem(
                title: 'BreadCrumb Icons Items:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Icon(
                      ExampleConst.breadcrumbsIcon[index],
                      color: Colors.white,
                    ),
                    onTap: () {},
                    borderRadius: BorderRadius.circular(4),
                    color: ExampleColors.primary,
                    disableColor: ExampleColors.primary,
                    splashColor: ExampleColors.accent,
                    textColor: ExampleColors.primary,
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
              ShowcaseItem(
                title: 'BreadCrumb with Custom Divider:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Text(
                      ExampleConst.breadcrumbs[index],
                      style: TextStyle(
                        fontWeight:
                            index < 3 ? FontWeight.bold : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: ExampleColors.accent,
                    onTap: index < 3 ? () {} : null,
                    textColor: ExampleColors.primary,
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
              ShowcaseItem(
                title: 'BreadCrumb with Complecitated Items:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          ExampleConst.breadcrumbsIcon[index],
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            ExampleConst.breadcrumbs[index],
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
                    color: ExampleColors.primary,
                    disableColor: ExampleColors.primary,
                    splashColor: ExampleColors.accent,
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
              ShowcaseItem(
                title: 'BreadCrumb with Complecitated Items:',
                content: BreadCrumb.builder(
                  itemCount: ExampleConst.breadcrumbs.length,
                  builder: (index) => BreadCrumbItem(
                    content: index == 0
                        ? Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 6),
                            child: Text(
                              '⬤ ⬤ ⬤',
                              style: TextStyle(color: Colors.grey, fontSize: 7),
                            ),
                          )
                        : Text(
                            ExampleConst.breadcrumbs[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                    borderRadius: BorderRadius.circular(4),
                    padding: EdgeInsets.all(4),
                    splashColor: ExampleColors.accent,
                    onTap: () {},
                    textColor: ExampleColors.primary,
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

class ShowcaseItem extends StatelessWidget {
  final String title;
  final Widget content;
  final EdgeInsetsGeometry padding;

  const ShowcaseItem({
    Key key,
    @required this.title,
    @required this.content,
    this.padding = const EdgeInsets.symmetric(vertical: 6),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1), blurRadius: 3, color: Colors.black26)
              ]),
          padding: EdgeInsets.all(8),
          child: content,
        ),
        SizedBox(height: 8),
        Divider(height: 16, color: Colors.black45),
      ],
    );
  }
}
