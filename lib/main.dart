import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_20/screen/first_page/first_page_mobile_view.dart';
import 'package:portfolio_20/screen/first_page/first_page_web_view.dart';
import 'package:portfolio_20/utils/responsive_layout.dart';
import 'package:portfolio_20/utils/themes/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: Sizer(
        builder: (context, orientation, deviceType) {
          return ResponsiveLayout(
            webBody: const FirstPageWebView(),
            mobileBody: const FirstPageMobileView(),
          );
        },
      ),
    );
  }
}
