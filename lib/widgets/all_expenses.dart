import 'package:flutter/material.dart';

import 'package:responsive_dash_bord/widgets/all_expenses_body.dart';
import 'package:responsive_dash_bord/widgets/all_expenses_header.dart';
import 'package:responsive_dash_bord/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      cild: Column(children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: AllExpensesHeader(),
        ),
        AllExpensesBody()
      ]),
      padding: 20,
    );
  }
}
