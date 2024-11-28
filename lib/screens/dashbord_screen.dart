import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/screens/dashbord_desktop_layout.dart';
import 'package:responsive_dash_bord/widgets/adaptive_layout.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletlayout: (context) => const SizedBox(),
          desktopLayoy: (context) => const DashBordDesktopLayout()),
    );
  }
}
