
import 'package:flutter/material.dart';

class BreadCrumbItem {
  final Widget content;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;
  final Color enableColor;
  final Color disableColor;

  BreadCrumbItem({
    @required this.content,
    this.padding,
    this.onTap,
    this.enableColor = Colors.transparent,
    this.disableColor = Colors.transparent,
  }) : assert(content != null);

  bool get isEnable => onTap != null;

  @override
  String toString() {
    return 'BreadCrumbItem{content: $content, padding: $padding, onTap: $onTap, enableColor: $enableColor, disableColor: $disableColor}';
  }
}
