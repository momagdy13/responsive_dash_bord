import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/screens/dashbord_screen.dart';

void main() {
  runApp(const ResponsiveDashBord());
}

class ResponsiveDashBord extends StatelessWidget {
  const ResponsiveDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoradScreen(),
    );
  }
}
