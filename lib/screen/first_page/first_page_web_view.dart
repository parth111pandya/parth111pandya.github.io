import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_20/customs/custom_appbar.dart';
import 'package:portfolio_20/customs/medium_text_widget.dart';
import 'package:portfolio_20/customs/regular_text_widget.dart';
import 'package:portfolio_20/customs/semi_bold_text_widget.dart';
import 'package:portfolio_20/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import '../../customs/bold_text_widget.dart';
import '../../customs/custom_card.dart';
import '../../utils/const.dart';

class FirstPageWebView extends StatefulWidget {
  const FirstPageWebView({super.key});

  @override
  State<FirstPageWebView> createState() => _FirstPageWebViewState();
}

class _FirstPageWebViewState extends State<FirstPageWebView> {
  Widget portfoiloWidget() {
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
                fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                fontcolor: Theme.of(context).chipTheme.labelStyle!.color,
              ),
            ),
            SizedBox(
              width: 0.4.w,
            ),
            Chip(
              label: RegularTextWidget(
                title: "Dart",
                fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                fontcolor: Theme.of(context).chipTheme.labelStyle!.color,
              ),
            ),
            SizedBox(
              width: 0.4.w,
            ),
            Chip(
              label: RegularTextWidget(
                title: "Flutter",
                fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
                fontcolor: Theme.of(context).chipTheme.labelStyle!.color,
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> list() {
    List<Widget> paginationGridList = [];
    for (int i = 0; i < (portfoilListCount / 4).ceil(); i++) {
      paginationGridList.add(
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
          itemCount: i == (portfoilListCount / 4).ceil() - 1
              ? portfoilListCount % 4
              : 4,
          itemBuilder: (BuildContext context, int index) {
            return portfoiloWidget();
          },
        ),
      );
    }
    return paginationGridList;
  }

  Widget workExplist() {
    return Padding(
      padding: EdgeInsets.only(left: 1.w, bottom: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoldTextWidget(
                title: "Flutter Developer",
                // fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
              ),
              BoldTextWidget(
                title: "2022 - PRESENT",
                // fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
              ),
            ],
          ),
          BoldTextWidget(
            title: "@ GNWebSoft Pvt. Ltd",
            fontcolor: Theme.of(context).colorScheme.primary,
            fontsize: Theme.of(context).textTheme.bodySmall!.fontSize,
          ),
          SizedBox(
            height: 2.h,
          ),
          BoldTextWidget(
            title:
                """Designed and prototyped proof of concept for a native app with core experiences encompassing crypto peer-to-peer payments, NFT gallery, authentication, peer-to-peer invites, Plaid integration for fiat on/offboarding, and two-factor authentication.
      
      Drafted product design and research job requisitions, hiring process, and pipeline tracking and reporting.""",
            fontcolor: Theme.of(context).colorScheme.primary,
            align: TextAlign.justify,
          )
        ],
      ),
    );
  }

  int portfoilListCount = 17;
  final ExpansionTileController controller = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    PageController portfolioPageController = PageController();
    int curr = 0;
    int selected = -1;

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
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomCard(
                  margin: EdgeInsets.zero,
                  child: const Image(
                    image: AssetImage(
                      APP_ARCHER_IMAGE,
                    ),
                    // height: 30.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              flex: 4,
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
                      Row(
                        children: [
                          FlutterLogo(
                            size: 3.h,
                          ),
                          RegularTextWidget(
                            title: "Sr. Flutter Developer",
                            fontsize:
                                Theme.of(context).textTheme.bodySmall!.fontSize,
                          ),
                        ],
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
                                  portfolioPageController.previousPage(
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
                                  portfolioPageController.nextPage(
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
                            controller: portfolioPageController,
                            onPageChanged: (num) {
                              setState(() {
                                curr = num;
                              });
                            },
                            children: list(),
                          ),
                        ),
                      ),
                      ExpansionTile(
                        // initiallyExpanded: true,
                        tilePadding: const EdgeInsets.all(6),
                        title: RegularTextWidget(
                          title: 'Work Experience',
                        ),
                        key: const Key('0'),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: FixedTimeline.tileBuilder(
                              theme: TimelineTheme.of(context).copyWith(
                                nodePosition: 0,
                              ),
                              builder: TimelineTileBuilder.connected(
                                contentsAlign: ContentsAlign.basic,
                                contentsBuilder: (context, index) =>
                                    workExplist(),
                                itemCount: 2,
                                indicatorPositionBuilder: (context, index) {
                                  return 0.01;
                                },
                                indicatorBuilder: (_, index) {
                                  return DotIndicator(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    size: 12,
                                  );
                                },
                                lastConnectorBuilder: (context) {
                                  return DashedLineConnector(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  );
                                },
                                connectorBuilder: (_, index, ___) =>
                                    DashedLineConnector(
                                  color: Theme.of(context).colorScheme.primary,
                                  thickness: 2,
                                ), // indicatorStyle: IndicatorStyle.dot,
                              ),
                            ),
                          )
                        ],
                        onExpansionChanged: (expanded) {
                          if (expanded) {
                            setState(() {
                              selected = 0;
                            });
                          } else {
                            setState(() {
                              selected = -1;
                            });
                          }
                        },
                      ),
                      ExpansionTile(
                        key: const Key('1'),
                        tilePadding: const EdgeInsets.all(6),
                        title: RegularTextWidget(
                          title: 'Education',
                        ),
                        controller: controller,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BoldTextWidget(
                                      title:
                                          "Bachelor of Engineering in Computer Engineering",
                                      fontFamily: FONT_STYLE_QUICK_BOLD,
                                    ),
                                    BoldTextWidget(
                                      title: "2019-2023",
                                    ),
                                  ],
                                ),
                                BoldTextWidget(
                                  title: "Darshan University, India",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BoldTextWidget(
                                      title: "Higher secondary",
                                      fontFamily: FONT_STYLE_QUICK_BOLD,
                                    ),
                                    BoldTextWidget(
                                      title: "2017-2019",
                                    ),
                                  ],
                                ),
                                BoldTextWidget(
                                  title:
                                      "Krishna International School, Rajkot, Gujarat, India",
                                  fontsize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize,
                                ),
                              ],
                            ),
                          ),
                        ],
                        onExpansionChanged: (expanded) {
                          if (expanded) {
                            setState(() {
                              selected = 1;
                            });
                          } else {
                            setState(() {
                              selected = -1;
                            });
                          }
                        },
                      )
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
