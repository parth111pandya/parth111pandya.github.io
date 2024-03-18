import 'package:flutter/material.dart';
import 'package:portfolio_20/customs/bold_text_widget.dart';
import 'package:portfolio_20/customs/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import '../../customs/custom_card.dart';
import '../../customs/regular_text_widget.dart';
import '../../utils/const.dart';

class FirstPageMobileView extends StatefulWidget {
  const FirstPageMobileView({super.key});

  @override
  State<FirstPageMobileView> createState() => _FirstPageMobileViewState();
}

class _FirstPageMobileViewState extends State<FirstPageMobileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBarTitle(
          title: "App Archer",
          appBarFontFamily: EARTH_ORBIT_ERXTRA_BOLD,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 2.h,
              horizontal: 3.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  child: const Image(
                    image: AssetImage(
                      APP_ARCHER_IMAGE,
                    ),
                    // height: 30.h,
                  ),
                ),
                RegularTextWidget(
                  title: "Parth H. Pandya",
                  fontsize: Theme.of(context).textTheme.headlineLarge!.fontSize,
                  fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                ),
                RegularTextWidget(
                  title: "Sr. Flutter Developer",
                  fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(),
                SizedBox(
                  height: 1.h,
                ),
                RegularTextWidget(
                  title: "LOCATION",
                  fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  fontFamily: FONT_STYLE_QUICK_REGULAR,
                ),
                RegularTextWidget(
                  title: "Rajkot, Gujrat, India",
                  fontsize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                ),
                SizedBox(
                  height: 2.h,
                ),
                RegularTextWidget(
                  title: "GNWEBSOFT MEMBER SINCE",
                  fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  fontFamily: FONT_STYLE_QUICK_REGULAR,
                ),
                RegularTextWidget(
                  title: "June 1, 2022",
                  fontsize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(),
                SizedBox(
                  height: 1.h,
                ),
                RegularTextWidget(
                  title:
                      '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
                  fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Chip(
                      label: RegularTextWidget(
                        title: "Flutter",
                        fontsize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontcolor:
                            Theme.of(context).chipTheme.labelStyle!.color,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Chip(
                      label: RegularTextWidget(
                        title: "Dart",
                        fontsize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontcolor:
                            Theme.of(context).chipTheme.labelStyle!.color,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Chip(
                      label: RegularTextWidget(
                        title: "Flutter",
                        fontsize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                        fontcolor:
                            Theme.of(context).chipTheme.labelStyle!.color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
