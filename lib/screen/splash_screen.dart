import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_20/screen/first_page/first_page_web_view.dart';

import '../utils/const.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget getSplashImage() {
    return FutureBuilder(
      future: wait(),
      builder: (context, snapshot) {
        return Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            APP_ARCHER_IMAGE,
          ),
        );
      },
    );
  }

  Future wait() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offAll(() => const FirstPageWebView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getSplashImage(),
    );
  }
}
