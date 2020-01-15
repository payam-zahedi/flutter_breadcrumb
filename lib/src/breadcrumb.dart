import 'package:flutter/material.dart';
import '../flutter_breadcrumb.dart';

typedef IndexedBreadCrumbItemBuilder = BreadCrumbItem Function(int index);

class BreadCrumb extends StatelessWidget {
  final List<BreadCrumbItem> items;
  final Widget divider;
  final BreadCrumbOverflow overflowType;

  const BreadCrumb({
    Key key,
    @required this.items,
    this.divider,
    this.overflowType = BreadCrumbOverflow.wrap,
  })  : assert(items != null, 'items parameters should not be empty'),
        assert(items.length > 0, 'items parameters should not be empty'),
        assert(overflowType != null, 'overflowType parameter required'),
        super(key: key);

  factory BreadCrumb.builder({
    @required int itemCount,
    @required IndexedBreadCrumbItemBuilder builder,
    Widget divider,
    BreadCrumbOverflow overflowType,
  }) =>
      BreadCrumb(
        items: List<BreadCrumbItem>.generate(
          itemCount,
          (i) => builder(i),
        ),
        divider: divider,
        overflowType: overflowType,
      );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
