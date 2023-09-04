import 'package:flutter/material.dart';
import 'package:responsive_ui/home_page/desktop_body.dart';
import 'package:responsive_ui/home_page/mobile_body.dart';

class ResponsiveLayoutExample extends StatelessWidget {
  const ResponsiveLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 400) {
        return const MobileBody();
      }
      return const DesktopBody();
    });
  }
}
