import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_20/customs/custom_appbar.dart';
import 'package:portfolio_20/customs/medium_text_widget.dart';
import 'package:portfolio_20/customs/regular_text_widget.dart';
import 'package:sizer/sizer.dart';
import '../../customs/bold_text_widget.dart';
import '../../utils/const.dart';

class FirstPageWebView extends StatefulWidget {
  const FirstPageWebView({super.key});

  @override
  State<FirstPageWebView> createState() => _FirstPageWebViewState();
}

class _FirstPageWebViewState extends State<FirstPageWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTitle(
        title: "App Archer Demo",
        appBarFontFamily: EARTH_ORBIT_ERXTRA_BOLD,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 3.w,
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image(
                  image: const AssetImage(
                    APP_ARCHER_IMAGE,
                  ),
                  height: 20.h,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldTextWidget(
                      title: "Parth H. Pandya",
                      fontsize:
                          Theme.of(context).textTheme.headlineLarge!.fontSize,
                      fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                    ),
                    RegularTextWidget(
                      title: "Sr. Flutter Developer",
                      fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                    ),
                    const Divider(),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RegularTextWidget(
                                  title: "LOCATION",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize,
                                  fontFamily: FONT_STYLE_QUICK_REGULAR,
                                ),
                                MediumTextWidget(
                                  title: "Rajkot, Gujrat, India",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(),
                          SizedBox(
                            width: 3.w,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RegularTextWidget(
                                  title: "GNWEBSOFT MEMBER SINCE",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize,
                                  fontFamily: FONT_STYLE_QUICK_REGULAR,
                                ),
                                MediumTextWidget(
                                  title: "June 1, 2022",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontFamily: FONT_STYLE_QUICK_SEMI_BOLD,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    RegularTextWidget(
                      title:
                          '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
                      fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                    ),
                    SizedBox(height: 1.h,),
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
                        SizedBox(width: 0.4.w,),
                        Chip(
                          label: RegularTextWidget(
                            title: "Dart",
                            fontsize:
                                Theme.of(context).textTheme.bodySmall!.fontSize,
                            fontcolor:
                                Theme.of(context).chipTheme.labelStyle!.color,
                          ),
                        ),
                        SizedBox(width: 0.4.w,),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
