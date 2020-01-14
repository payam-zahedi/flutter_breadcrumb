import 'package:flutter/material.dart';
import '../flutter_breadcrumb.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


