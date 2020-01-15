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

  Widget _buildFactory(BreadCrumbOverflow overflowType) {
    switch (overflowType) {
      case BreadCrumbOverflow.wrap:
        return _WrapBreadCrumb(items: items,divider: divider);
        break;
      case BreadCrumbOverflow.ellipsisStart:
        // TODO: Handle this case.
        break;
      case BreadCrumbOverflow.ellipsisEnd:
        // TODO: Handle this case.
        break;
      case BreadCrumbOverflow.scroll:
        // TODO: Handle this case.
        break;
      default:
        return _WrapBreadCrumb(items: items,divider: divider);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildFactory(overflowType);
  }
}

class _WrapBreadCrumb extends StatelessWidget {
  final List<BreadCrumbItem> items;
  final Widget divider;

  const _WrapBreadCrumb({Key key, this.items, this.divider})
      : assert(items != null, 'items parameters should not be empty'),
        assert(items.length > 0, 'items parameters should not be empty'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetItems;

    if (divider != null) {
      widgetItems=[];
      items.forEach((item) {
        widgetItems.add(item.content);
        widgetItems.add(divider);
      });
    }
    widgetItems ??= items.map<Widget>((item) => item.content);

    return Wrap(
      children: widgetItems,
      crossAxisAlignment: WrapCrossAlignment.center,
    );
  }
}
