import 'package:flutter/material.dart';
import '../flutter_breadcrumb.dart';

typedef IndexedBreadCrumbItemBuilder = BreadCrumbItem Function(int index);

class BreadCrumb extends StatelessWidget {
  final List<BreadCrumbItem> items;
  final Widget divider;
  final BreadCrumbOverflow overflow;

  const BreadCrumb({
    Key key,
    @required this.items,
    this.divider,
    this.overflow =const WrapOverflow(),
  })  : assert(items != null, 'items parameters should not be empty'),
        assert(items.length > 0, 'items parameters should not be empty'),
        assert(overflow != null, 'overflowType parameter required'),
        super(key: key);

  factory BreadCrumb.builder({
    @required int itemCount,
    @required IndexedBreadCrumbItemBuilder builder,
    Widget divider,
    BreadCrumbOverflow overflowType =const WrapOverflow(),
  }) =>
      BreadCrumb(
        items: List<BreadCrumbItem>.generate(
          itemCount,
          (i) => builder(i),
        ),
        divider: divider,
        overflow: overflowType,
      );


  @override
  Widget build(BuildContext context) {

    return overflow.build(context,items,divider);
  }
}


class BreadCrumbTile extends StatelessWidget {
  final BreadCrumbItem breadCrumbItem;

  const BreadCrumbTile({Key key, @required this.breadCrumbItem})
      : assert(breadCrumbItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: breadCrumbItem.margin ?? EdgeInsets.all(0),
      child: Material(
        color: breadCrumbItem.isEnable
            ? breadCrumbItem.color
            : breadCrumbItem.disableColor,
        shape: RoundedRectangleBorder(
          borderRadius: breadCrumbItem.borderRadius,
          side: breadCrumbItem.border,
        ),
        child: InkWell(
          onTap: breadCrumbItem.onTap,
          splashColor: breadCrumbItem.splashColor,
          borderRadius: breadCrumbItem.borderRadius,
          child: Padding(
            padding: breadCrumbItem.padding?? EdgeInsets.all(0),

            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: breadCrumbItem.isEnable
                    ? breadCrumbItem.textColor
                    : breadCrumbItem.disabledTextColor,
              ),
              child: breadCrumbItem.content,
            ),
          ),
        ),
      ),
    );
  }
}
