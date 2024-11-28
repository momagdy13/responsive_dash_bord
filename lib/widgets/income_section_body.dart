import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utlis/size_config.dart';
import 'package:responsive_dash_bord/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_bord/widgets/income_chart.dart';
import 'package:responsive_dash_bord/widgets/income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
