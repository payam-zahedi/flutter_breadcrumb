import 'package:flutter/material.dart';
import '../flutter_breadcrumb.dart';

typedef IndexedBreadCrumbItemBuilder = BreadCrumbItem Function(int index);

class BreadCrumb extends StatelessWidget {
  final List<BreadCrumbItem> items;
  final Widget? divider;
  final BreadCrumbOverflow overflow;

  const BreadCrumb({
    Key? key,
    required this.items,
    this.divider,
    this.overflow = const WrapOverflow(),
  })  : assert(items.length > 0, 'items parameters should not be empty'),
        super(key: key);

  factory BreadCrumb.builder({
    required int itemCount,
    required IndexedBreadCrumbItemBuilder builder,
    Widget? divider,
    BreadCrumbOverflow overflow = const WrapOverflow(),
  }) =>
      BreadCrumb(
        items: List<BreadCrumbItem>.generate(
          itemCount,
          (i) => builder(i),
        ),
        divider: divider,
        overflow: overflow,
      );

  @override
  Widget build(BuildContext context) {
    return overflow.build(context, items, divider);
  }
}
