import 'package:flutter/cupertino.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

abstract class BreadCrumbOverflow {
  const BreadCrumbOverflow();

  Widget build(
    BuildContext context,
    List<BreadCrumbItem> items,
    Widget divider,
  );
}

class WrapOverflow extends BreadCrumbOverflow {
  final double spacing;
  final double runSpacing;

  const WrapOverflow({
    this.spacing = 0,
    this.runSpacing = 0,
  });

  @override
  Widget build(
    BuildContext context,
    List<BreadCrumbItem> items,
    Widget divider,
  ) {
    List<Widget> widgetItems;

    if (divider != null) {
      widgetItems = [];
      items.forEach((item) {
        widgetItems.add(
          BreadCrumbTile(breadCrumbItem: item),
        );
        widgetItems.add(divider);
      });
    }

    widgetItems ??= items.map<Widget>(
      (item) => BreadCrumbTile(breadCrumbItem: item),
    );

    return Wrap(
      children: widgetItems,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 4,
    );
  }
}
