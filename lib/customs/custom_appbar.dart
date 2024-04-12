import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_20/customs/bold_text_widget.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomAppBarTitle extends StatefulWidget implements PreferredSizeWidget {
  String? title;
  Widget? titleWidget;
  double? fontsize;
  Color? fontcolor;
  Color? appBarBgcolor;
  TextAlign? align;
  List<Widget>? actionsWidget;
  PreferredSizeWidget? bottomWidget;
  Widget? leadingWidget;
  String? appBarFontFamily;

  CustomAppBarTitle({
    Key? key,
    this.leadingWidget,
    this.title,
    this.fontsize,
    this.fontcolor,
    this.align,
    this.appBarBgcolor,
    this.actionsWidget,
    this.bottomWidget,
    this.titleWidget,
    this.appBarFontFamily,
  }) : super(key: key);

  @override
  State<CustomAppBarTitle> createState() => _CustomAppBarTitleState();

  @override
  Size get preferredSize => Size.fromHeight(8.h);
}

class _CustomAppBarTitleState extends State<CustomAppBarTitle> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      bottom: widget.bottomWidget,
      leading: widget.leadingWidget,
      title: widget.titleWidget ??
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 2.w,
              ),
              Image(
                image: const AssetImage('assets/image/app_archer_image.png'),
                height: 5.h,
              ),
              SizedBox(
                width: 1.w,
              ),
              BoldTextWidget(
                title: widget.title ?? "",
                fontFamily: widget.appBarFontFamily,
                fontsize: 6.sp,
              ),
            ],
          ),
      actions: [
        Row(
          children: widget.actionsWidget ?? [],
        ),
        Center(
          child: IconButton(
            onPressed: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
            icon: Icon(
              Get.isDarkMode ? Icons.dark_mode : Icons.light_mode_outlined,
              size: 4.h,
            ),
          ),
        ),
        SizedBox(
          width: 1.w,
        )
      ],
    );
  }
}
