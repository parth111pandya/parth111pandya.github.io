import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/const.dart';

class BoldTextWidget extends StatefulWidget {
  String? title;
  double? fontsize;
  Color? fontcolor;
  TextAlign? align;
  int? maxLines;
  String? fontFamily;

  BoldTextWidget({
    Key? key,
    this.title,
    this.fontsize,
    this.fontcolor,
    this.align,
    this.maxLines,
    this.fontFamily,
  }) : super(key: key);

  @override
  State<BoldTextWidget> createState() => _BoldTextWidgetState();
}

class _BoldTextWidgetState extends State<BoldTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title.toString(),
      maxLines: widget.maxLines,
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
