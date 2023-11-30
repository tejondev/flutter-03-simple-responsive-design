import 'package:flutter/material.dart';

import '../../config/constants/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  // 1. Definir tamaños y pasar al constructor
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    // 2. Utilizar LayoutBuilder
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
