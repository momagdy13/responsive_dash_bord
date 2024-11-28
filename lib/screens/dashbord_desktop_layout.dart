import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widgets/all_expenses.dart';
import 'package:responsive_dash_bord/widgets/custom_drawer.dart';
import 'package:responsive_dash_bord/widgets/quick_invoice.dart';

class DashBordDesktopLayout extends StatelessWidget {
  const DashBordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice()
              ],
            ))
      ],
    );
  }
}
