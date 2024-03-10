// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/const.dart';
import '../utils/colors.dart';

class RegularTextWidget extends StatefulWidget {
  String? title;
  double? fontsize;
  Color? fontcolor;
  TextAlign? align;
  int? maxLines;
  String? fontFamily;

  RegularTextWidget({
    Key? key,
    this.title,
    this.fontsize,
    this.fontcolor,
    this.maxLines,
    this.align,
    this.fontFamily,
  }) : super(key: key);

  @override
  State<RegularTextWidget> createState() => _RegularTextWidgetState();
}

class _RegularTextWidgetState extends State<RegularTextWidget> {
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
