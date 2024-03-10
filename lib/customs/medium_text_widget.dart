// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/const.dart';

class MediumTextWidget extends StatefulWidget {
  String? title;
  double? fontsize;
  Color? fontcolor;
  TextAlign? align;
  int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;
  String? fontFamily;

  MediumTextWidget({
    Key? key,
    this.maxLines,
    this.title,
    this.fontsize,
    this.fontcolor,
    this.align,
    this.overflow,
    this.softWrap,
    this.fontFamily,
  }) : super(key: key);

  @override
  State<MediumTextWidget> createState() => _MediumTextWidgetState();
}

class _MediumTextWidgetState extends State<MediumTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title.toString(),
      overflow: widget.overflow,
      softWrap: widget.softWrap,
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
