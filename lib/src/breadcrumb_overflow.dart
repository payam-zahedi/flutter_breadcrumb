import 'package:flutter/cupertino.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

abstract class BreadCrumbOverflow {
  const BreadCrumbOverflow();

  List<Widget> widgetItems(List<BreadCrumbItem> items, Widget divider);

  Widget build(
    BuildContext context,
    List<BreadCrumbItem> items,
    Widget divider,
  );
}

class WrapOverflow extends BreadCrumbOverflow {
  final WrapAlignment alignment;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final Axis direction;
  final double spacing;
  final double runSpacing;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  const WrapOverflow({
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });



  @override
  List<Widget> widgetItems(List<BreadCrumbItem> items, Widget divider) {
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
    return widgetItems;
  }

  @override
  Widget build(
    BuildContext context,
    List<BreadCrumbItem> items,
    Widget divider,
  ) {
    return Wrap(
      children: widgetItems(items, divider),
      crossAxisAlignment: crossAxisAlignment,
      alignment: alignment,
      direction: direction,
      runAlignment: runAlignment,
      verticalDirection: verticalDirection,
      runSpacing: runSpacing,
      textDirection: textDirection,
      spacing: spacing,
    );
  }
}
