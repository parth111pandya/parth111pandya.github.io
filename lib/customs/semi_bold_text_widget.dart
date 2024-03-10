import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/const.dart';

class SemiBoldTextWidget extends StatefulWidget {
  String? title;
  double? fontsize;
  Color? fontcolor;
  TextAlign? align;
  int? maxLines;
  String? fontFamily;

  SemiBoldTextWidget({
    Key? key,
    this.title,
    this.fontsize,
    this.fontcolor,
    this.align,
    this.maxLines,
    this.fontFamily,
  }) : super(key: key);

  @override
  State<SemiBoldTextWidget> createState() => _SemiBoldTextWidgetState();
}

class _SemiBoldTextWidgetState extends State<SemiBoldTextWidget> {
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
