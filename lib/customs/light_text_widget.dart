// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LightTextWidget extends StatefulWidget {
  String? title;
  double? fontsize;
  Color? fontcolor;
  TextAlign? align;
  int? maxLines;
  String? fontFamily;

  LightTextWidget(
      {Key? key,
      this.maxLines,
      this.title,
      this.fontFamily,
      this.fontsize,
      this.fontcolor,
      this.align})
      : super(key: key);

  @override
  State<LightTextWidget> createState() => _LightTextWidgetState();
}

class _LightTextWidgetState extends State<LightTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title.toString(),
      style: TextStyle(
        fontFamily: widget.fontFamily ??
            Theme.of(context).textTheme.bodyMedium!.fontFamily,
        fontSize:
            widget.fontsize ?? Theme.of(context).textTheme.bodyMedium!.fontSize,
        color:
            widget.fontcolor ?? Theme.of(context).textTheme.bodyMedium!.color,
      ),
      textAlign: widget.align ?? TextAlign.start,
    );
  }
}
