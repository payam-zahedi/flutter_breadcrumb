import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class BreadCrumbTile extends StatelessWidget {
  final BreadCrumbItem breadCrumbItem;

  const BreadCrumbTile({Key? key, required this.breadCrumbItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: breadCrumbItem.margin,
      child: Material(
        color: breadCrumbItem.isEnable ? breadCrumbItem.color : breadCrumbItem.disableColor,
        shape: RoundedRectangleBorder(
          borderRadius: breadCrumbItem.borderRadius,
          side: breadCrumbItem.border,
        ),
        child: InkWell(
          onTap: breadCrumbItem.onTap,
          splashColor: breadCrumbItem.splashColor,
          borderRadius: breadCrumbItem.borderRadius as BorderRadius?,
          child: Padding(
            padding: breadCrumbItem.padding,
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
