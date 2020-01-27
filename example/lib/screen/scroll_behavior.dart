import 'package:example/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class ScrollBehavior extends StatefulWidget {
  @override
  _ScrollBehaviorState createState() => _ScrollBehaviorState();
}

class _ScrollBehaviorState extends State<ScrollBehavior> {
  int _itemCount = 8;

  bool _isHorizontal = true;
  bool _reverse = false;
  bool _lastDivider = false;

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ExampleStrings.scrollBehavior),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1), blurRadius: 3, color: Colors.black26)
              ]),
          padding: EdgeInsets.all(8),
          child: BreadCrumb.builder(
            itemCount: _itemCount,
            builder: (index) {
              return BreadCrumbItem(content: Text('Item $index'), onTap: () {});
            },
            divider: Icon(
              Icons.chevron_right,
              color: Colors.red,
            ),
            overflow: ScrollableOverflow(
              direction: _isHorizontal ? Axis.horizontal : Axis.vertical,
              reverse: _reverse,
              keepLastDivider: _lastDivider,
              controller: _scrollController,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: double.infinity,
        color: Colors.white,
        child: Wrap(
          spacing: 4,
          children: <Widget>[
            FlatButton(
              child: Icon(Icons.add),
              color: ExampleColors.primary,
              onPressed: () {
                if (_itemCount < 20) {
                  setState(() {
                    _itemCount++;
                  });
                  _animateToLast();
                }
              },
            ),
            FlatButton(
              child: Icon(Icons.remove),
              color: ExampleColors.primary,
              onPressed: () {
                if (_itemCount > 0) {
                  setState(() {
                    _itemCount--;
                  });
                  _animateToLast();
                }
              },
            ),
            FlatButton(
              child: Text('Reverse'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  _reverse = !_reverse;
                });
              },
            ),
            FlatButton(
              child: Text('Direction'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  _isHorizontal = !_isHorizontal;
                });
              },
            ),
            FlatButton(
              child: Text('Move-First'),
              color: ExampleColors.primary,
              onPressed: () {
                _animateToFirst();
              },
            ),
            FlatButton(
              child: Text('Move-Last'),
              color: ExampleColors.primary,
              onPressed: () {
                _animateToLast();
              },
            ),
            FlatButton(
              child: Text('Last Divider'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  _lastDivider = !_lastDivider;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  void _animateToFirst() {
    _scrollController.animateTo(
      0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _animateToLast() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }
}
