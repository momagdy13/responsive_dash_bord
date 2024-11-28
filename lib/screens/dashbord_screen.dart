import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/screens/dashbord_desktop_layout.dart';
import 'package:responsive_dash_bord/utlis/size_config.dart';
import 'package:responsive_dash_bord/widgets/adaptive_layout.dart';
import 'package:responsive_dash_bord/widgets/custom_drawer.dart';
import 'package:responsive_dash_bord/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_bord/widgets/dashboard_tablet_layout.dart';

class DashBoradScreen extends StatefulWidget {
  const DashBoradScreen({super.key});

  @override
  State<DashBoradScreen> createState() => _DashBoradScreenState();
}

class _DashBoradScreenState extends State<DashBoradScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletlayout: (context) => const DashBoardTabletLayout(),
        desktopLayoy: (context) => const DashBordDesktopLayout(),
      ),
    );
  }
}
