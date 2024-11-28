import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletlayout,
      required this.desktopLayoy});
  final WidgetBuilder mobileLayout, tabletlayout, desktopLayoy;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return mobileLayout(context);
          } else if (constraints.maxWidth < 900) {
            return tabletlayout(context);
          } else {
            return desktopLayoy(context);
          }
        },
      ),
    );
  }
}
