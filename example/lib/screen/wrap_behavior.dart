import 'package:example/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class WrapBehavior extends StatefulWidget {
  @override
  _WrapBehaviorState createState() => _WrapBehaviorState();
}

class _WrapBehaviorState extends State<WrapBehavior> {
  int _itemCount = 7;

  bool _isHorizontal = true;

  int _alignment = 0;

  int _crossAlignment = 2;

  int _verticalDirection = 1;

  double _runSpacing = 4;
  double _spacing = 4;

  bool _lastDivider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ExampleStrings.wrapBehavior),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),

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
            overflow: WrapOverflow(
              direction: _isHorizontal ? Axis.horizontal : Axis.vertical,
              alignment: WrapAlignment.values[_alignment],
              crossAxisAlignment: WrapCrossAlignment.values[_crossAlignment],
              verticalDirection: VerticalDirection.values[_verticalDirection],
              runSpacing: _runSpacing,
              spacing: _spacing,
              keepLastDivider: _lastDivider,
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
                }
              },
            ),
            FlatButton(
              child: Text('Alignment'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  if (_alignment < WrapAlignment.values.length - 1) {
                    _alignment++;
                  } else {
                    _alignment = 0;
                  }
                });
              },
            ),
            FlatButton(
              child: Text('CrossAlignment'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  if (_crossAlignment < WrapCrossAlignment.values.length - 1) {
                    _crossAlignment++;
                  } else {
                    _crossAlignment = 0;
                  }
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
              child: Text('V-Alignment'),
              color: ExampleColors.primary,
              onPressed: () {
                setState(() {
                  if (_verticalDirection <
                      VerticalDirection.values.length - 1) {
                    _verticalDirection++;
                  } else {
                    _verticalDirection = 0;
                  }
                });
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
}
