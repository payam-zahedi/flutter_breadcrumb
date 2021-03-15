import 'package:example/res/res.dart';
import 'package:example/screen/scroll_behavior.dart' as scroll;
import 'package:example/screen/showcase.dart';
import 'package:example/screen/wrap_behavior.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ExampleStrings.breadcrumb),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          HomeCard(
            title: ExampleStrings.showcases,
            subTitle: 'Checkout Showcases that may be usefull for you',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowCases(),
                ),
              );
            },
          ),
          HomeCard(
            title: ExampleStrings.wrapBehavior,
            subTitle:
                'This example will help you to undestand how wrap overflow behavior works',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WrapBehavior(),
                ),
              );
            },
          ),
          HomeCard(
            title: 'Scroll Behavior',
            subTitle:
                'This example will help you to undestand how wrap Scroll behavior works',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => scroll.ScrollBehavior(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const HomeCard({
    Key? key,
    required this.title,
    required this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: 22,
      color: ExampleColors.primary,
      fontWeight: FontWeight.bold,
    );
    final subtitleStyle = TextStyle(
      fontSize: 16,
      color: ExampleColors.greyTextColor,
      fontWeight: FontWeight.normal,
    );
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 6,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        splashColor: ExampleColors.accent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                  height: 130,
                ),
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: titleStyle,
                ),
              ),
              Text(
                subTitle,
                style: subtitleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
