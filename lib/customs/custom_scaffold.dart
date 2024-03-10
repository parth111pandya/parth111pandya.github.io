import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'custom_appbar.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? titleWidget;
  final String? appBarTitle;
  final bool? resizeToAvoidBottomInset;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? actionsWidget;
  final Widget? endDrawer;
  final Widget? appBarLeadingWidget;

  const CustomScaffold({
    super.key,
    required this.body,
    this.resizeToAvoidBottomInset,
    this.bottomNavigationBar,
    this.appBarTitle,
    this.padding,
    this.actionsWidget,
    this.titleWidget,
    this.endDrawer,
    this.appBarLeadingWidget,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification? overscroll) {
        overscroll!.disallowIndicator();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          key: widget.key,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: widget.appBarTitle != null ||
                  widget.titleWidget != null ||
                  widget.appBarLeadingWidget != null
              ? CustomAppBarTitle(
                  leadingWidget: widget.appBarLeadingWidget,
                  title: widget.appBarTitle,
                  titleWidget: widget.titleWidget,
                  actionsWidget: widget.actionsWidget,
                )
              : null,
          body: Padding(
            padding: widget.padding ?? const EdgeInsets.all(8.0),
            child: widget.body,
          ),
          endDrawer: widget.endDrawer,
          bottomNavigationBar: widget.bottomNavigationBar,
          resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        ),
      ),
    );
  }
}
