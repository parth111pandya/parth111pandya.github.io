import 'package:flutter/material.dart';
import 'package:portfolio_20/customs/bold_text_widget.dart';
import 'package:portfolio_20/customs/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import '../../utils/const.dart';

class FirstPageMobileView extends StatefulWidget {
  const FirstPageMobileView({super.key});

  @override
  State<FirstPageMobileView> createState() => _FirstPageMobileViewState();
}

class _FirstPageMobileViewState extends State<FirstPageMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTitle(
        title: "App Archer",
        appBarFontFamily: EARTH_ORBIT_ERXTRA_BOLD,
        actionsWidget: const [
          Icon(
            Icons.menu,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 3.w,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BoldTextWidget(
                title: "Parth H. Pandya",
              ),
            )
          ],
        ),
      ),
    );
  }
}
