import 'package:flutter/cupertino.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

abstract class BreadCrumbOverflow {
  const BreadCrumbOverflow();

  /// creates List<Widget> with [items] and [divider] parameters
  /// and this list will use in [build] method
  List<Widget> widgetItems(List<BreadCrumbItem> items, Widget divider);

  ///creates widget that should show [items] and [divider]
  Widget build(
    BuildContext context,
    List<BreadCrumbItem> items,
    Widget divider,
  );
}

class WrapOverflow extends BreadCrumbOverflow {
  const WrapOverflow({
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });

  /// align children in main direction
  final WrapAlignment alignment;

  /// How the runs themselves should be placed in the cross axis.
  final WrapAlignment runAlignment;

  /// align children in cross direction
  final WrapCrossAlignment crossAxisAlignment;

  /// The direction to use as the main axis.
  /// [Axis.horizontal] to show children in horizontal axis
  /// and [Axis.vertical] is for show children in vertical axis
  final Axis direction;

  ///creates space between items in main axis
  final double spacing;

  ///creates space between items in cross axis
  final double runSpacing;

  ///it can be use in horizontal direction to show items in reverse
  final TextDirection textDirection;

  ///it can be use in vertical direction to show items in reverse
  final VerticalDirection verticalDirection;

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
