import 'package:flutter/material.dart';

class FABItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double iconSize;

  const FABItem({
    Key key,
    this.iconData,
    this.iconSize,
    this.text,
    this.iconColor,
    this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(iconData, color: iconColor, size: iconSize),
              Text(
                text,
                style: TextStyle(color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
