import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';
import 'package:responsive_dash_bord/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Text(
            'All Expenses',
            style: AppStyle.styleSemiBold20,
          ),
        ),
        RangeOption()
      ],
    );
  }
}
