import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget mobileBody;
  Widget webBody;

  ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.webBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return webBody;
        }
      },
    );
  }
}
