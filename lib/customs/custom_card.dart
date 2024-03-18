import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors.dart';
import '../utils/const.dart';

class CustomCard extends StatelessWidget {
  Color? bgColor;
  Color? cardBorderbgColor;
  Widget? child;
  final double? cardRadius;
  final GestureTapCallback? onCardPress;
  final bool isGiveWith;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  final double? elevation;

  CustomCard({
    this.bgColor,
    this.cardBorderbgColor,
    this.child,
    this.cardRadius,
    this.onCardPress,
    this.isGiveWith = true,
    this.margin,
    this.padding,
    this.shadowColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isGiveWith ? double.infinity : null,
      child: Card(
        elevation: elevation ?? 3,
        margin: margin ?? EdgeInsets.all(2.w),
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: cardBorderbgColor != null
                ? cardBorderbgColor!
                : bgColor ?? Theme.of(context).cardColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(cardRadius ?? 10),
          ),
        ),
        color: bgColor ?? Theme.of(context).cardColor,
        child: InkWell(
          onTap: onCardPress,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
