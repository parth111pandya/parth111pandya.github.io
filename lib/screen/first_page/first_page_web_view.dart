import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:portfolio_20/customs/custom_appbar.dart';
import 'package:portfolio_20/customs/medium_text_widget.dart';
import 'package:portfolio_20/customs/regular_text_widget.dart';
import 'package:portfolio_20/utils/colors.dart';
import 'package:sizer/sizer.dart';
import '../../customs/bold_text_widget.dart';
import '../../customs/custom_card.dart';
import '../../utils/const.dart';

class FirstPageWebView extends StatefulWidget {
  const FirstPageWebView({super.key});

  @override
  State<FirstPageWebView> createState() => _FirstPageWebViewState();
}

class _FirstPageWebViewState extends State<FirstPageWebView> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    List<Widget> list = <Widget>[
      GridView.builder(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.85,
          ),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const Image(
                  image: AssetImage(
                    DEMO_IMGE,
                  ),
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
                      width: 0.4.w,
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
                      width: 0.4.w,
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
            );
          }),
      GridView.builder(
          scrollDirection: Axis.horizontal,
          physics: const PageScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.85,
          ),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const Image(
                  image: AssetImage(
                    DEMO_IMGE,
                  ),
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
                      width: 0.4.w,
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
                      width: 0.4.w,
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
            );
          }),
    ];
    int curr = 0;
    return Scaffold(
      appBar: CustomAppBarTitle(
        title: "App Archer",
        appBarFontFamily: EARTH_ORBIT_ERXTRA_BOLD,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 10.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: CustomCard(
                  child: const Image(
                    image: AssetImage(
                      APP_ARCHER_IMAGE,
                    ),
                    // height: 30.h,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
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
                        fontsize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 1.h,
                      ),
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
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 1.h,
                      ),
                      RegularTextWidget(
                        title:
                            '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).''',
                        fontsize:
                            Theme.of(context).textTheme.bodySmall!.fontSize,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          Chip(
                            label: RegularTextWidget(
                              title: "Flutter",
                              fontsize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontcolor:
                                  Theme.of(context).chipTheme.labelStyle!.color,
                            ),
                          ),
                          SizedBox(
                            width: 0.4.w,
                          ),
                          Chip(
                            label: RegularTextWidget(
                              title: "Dart",
                              fontsize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontcolor:
                                  Theme.of(context).chipTheme.labelStyle!.color,
                            ),
                          ),
                          SizedBox(
                            width: 0.4.w,
                          ),
                          Chip(
                            label: RegularTextWidget(
                              title: "Flutter",
                              fontsize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize,
                              fontcolor:
                                  Theme.of(context).chipTheme.labelStyle!.color,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RegularTextWidget(
                            title: "Portfolio",
                            fontcolor: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .color,
                          ),
                          Row(
                            children: [
                              CustomCard(
                                isGiveWith: false,
                                onCardPress: () {
                                  pageController.previousPage(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                  );
                                },
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 0.6.w,
                                ),
                                child: Center(
                                  child: RegularTextWidget(
                                    title: "<",
                                    fontcolor: Colors.black,
                                    fontFamily: FONT_STYLE_QUICK_BOLD,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.6.w,
                              ),
                              CustomCard(
                                isGiveWith: false,
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 0.6.w,
                                ),
                                onCardPress: () {
                                  pageController.nextPage(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Center(
                                  child: RegularTextWidget(
                                    title: ">",
                                    fontFamily: FONT_STYLE_QUICK_BOLD,
                                    fontcolor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      // SizedBox(
                      //   height: 100.h,
                      //   width: double.infinity,
                      //   child: SingleChildScrollView(
                      //     scrollDirection: Axis.horizontal,
                      //     child: GridView.builder(
                      //         scrollDirection: Axis.horizontal,
                      //         physics: const PageScrollPhysics(),
                      //         gridDelegate:
                      //             const SliverGridDelegateWithFixedCrossAxisCount(
                      //           mainAxisSpacing: 10,
                      //           crossAxisSpacing: 10,
                      //           crossAxisCount: 2,
                      //           childAspectRatio: 0.85,
                      //         ),
                      //         shrinkWrap: true,
                      //         itemCount: 5,
                      //         itemBuilder: (BuildContext context, int index) {
                      //           return Column(
                      //             children: [
                      //               const Image(
                      //                 image: AssetImage(
                      //                   DEMO_IMGE,
                      //                 ),
                      //               ),
                      //               SizedBox(
                      //                 height: 1.h,
                      //               ),
                      //               Row(
                      //                 children: [
                      //                   Chip(
                      //                     label: RegularTextWidget(
                      //                       title: "Flutter",
                      //                       fontsize: Theme.of(context)
                      //                           .textTheme
                      //                           .bodySmall!
                      //                           .fontSize,
                      //                       fontcolor: Theme.of(context)
                      //                           .chipTheme
                      //                           .labelStyle!
                      //                           .color,
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     width: 0.4.w,
                      //                   ),
                      //                   Chip(
                      //                     label: RegularTextWidget(
                      //                       title: "Dart",
                      //                       fontsize: Theme.of(context)
                      //                           .textTheme
                      //                           .bodySmall!
                      //                           .fontSize,
                      //                       fontcolor: Theme.of(context)
                      //                           .chipTheme
                      //                           .labelStyle!
                      //                           .color,
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     width: 0.4.w,
                      //                   ),
                      //                   Chip(
                      //                     label: RegularTextWidget(
                      //                       title: "Flutter",
                      //                       fontsize: Theme.of(context)
                      //                           .textTheme
                      //                           .bodySmall!
                      //                           .fontSize,
                      //                       fontcolor: Theme.of(context)
                      //                           .chipTheme
                      //                           .labelStyle!
                      //                           .color,
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ],
                      //           );
                      //         }),
                      //   ),
                      // ),
                      SizedBox(
                        height: 80.h,
                        width: double.infinity,
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context).copyWith(
                            dragDevices: {
                              PointerDeviceKind.touch,
                              PointerDeviceKind.mouse,
                            },
                          ),
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            // reverse: true,
                            // physics: BouncingScrollPhysics(),
                            controller: pageController,
                            onPageChanged: (num) {
                              setState(() {
                                curr = num;
                              });
                            },
                            children: list,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;

  Pages({this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
