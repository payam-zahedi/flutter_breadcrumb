import 'package:flutter/cupertino.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_breadcrumb/src/breadcrumb_widget.dart';

abstract class BreadCrumbOverflow {
  ///this value determine the last divider should render or not
  bool get keepLastDivider;

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

///subclass of [BreadCrumbOverflow] that use [Wrap] Widget to show his items
class WrapOverflow extends BreadCrumbOverflow {
  const WrapOverflow({
    this.keepLastDivider = false,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });

  final bool keepLastDivider;

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
      if (!keepLastDivider) {
        widgetItems.removeLast();
      }
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

class ScrollableOverflow extends BreadCrumbOverflow {
  ScrollableOverflow({
    this.keepLastDivider = false,
    this.direction = Axis.horizontal,
    this.reverse = false,
    this.padding,
    this.controller,
    this.primary,
    this.physics,
  });

  final bool keepLastDivider;

  /// The direction to use as the main axis.
  /// [Axis.horizontal] to show children in horizontal axis
  /// and [Axis.vertical] is for show children in vertical axis
  final Axis direction;

  /// Whether the scroll view scrolls in the reading direction.
  ///
  /// For example, if the reading direction is left-to-right and
  /// [scrollDirection] is [Axis.horizontal], then the scroll view scrolls from
  /// left to right when [reverse] is false and from right to left when
  /// [reverse] is true.
  ///
  /// Similarly, if [scrollDirection] is [Axis.vertical], then the scroll view
  /// scrolls from top to bottom when [reverse] is false and from bottom to top
  /// when [reverse] is true.
  ///
  /// Defaults to false.
  final bool reverse;

  /// The amount of space by which to inset the child.
  final EdgeInsetsGeometry padding;

  /// An object that can be used to control the position to which this scroll
  /// view is scrolled.
  ///
  /// Must be null if [primary] is true.
  ///
  /// A [ScrollController] serves several purposes. It can be used to control
  /// the initial scroll position (see [ScrollController.initialScrollOffset]).
  /// It can be used to control whether the scroll view should automatically
  /// save and restore its scroll position in the [PageStorage] (see
  /// [ScrollController.keepScrollOffset]). It can be used to read the current
  /// scroll position (see [ScrollController.offset]), or change it (see
  /// [ScrollController.animateTo]).
  final ScrollController controller;

  /// Whether this is the primary scroll view associated with the parent
  /// [PrimaryScrollController].
  ///
  /// On iOS, this identifies the scroll view that will scroll to top in
  /// response to a tap in the status bar.
  ///
  /// Defaults to true when [scrollDirection] is vertical and [controller] is
  /// not specified.
  final bool primary;

  /// How the scroll view should respond to user input.
  ///
  /// For example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view.
  ///
  /// Defaults to matching platform conventions.
  final ScrollPhysics physics;

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
      if (!keepLastDivider) {
        widgetItems.removeLast();
      }
    }

    widgetItems ??= items.map<Widget>(
      (item) => BreadCrumbTile(breadCrumbItem: item),
    );
    return widgetItems;
  }

  @override
  Widget build(
      BuildContext context, List<BreadCrumbItem> items, Widget divider) {
    final widgetList = widgetItems(items, divider);
    return SingleChildScrollView(
      scrollDirection: direction,
      controller: controller,
      padding: padding,
      physics: physics,
      primary: primary,
      reverse: reverse,
      child: direction == Axis.horizontal
          ? Row(children: widgetList)
          : Column(children: widgetList),
    );
  }
}
