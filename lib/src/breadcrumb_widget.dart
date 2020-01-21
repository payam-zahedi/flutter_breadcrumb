
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

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
