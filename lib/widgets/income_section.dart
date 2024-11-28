import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widgets/custom_container.dart';
import 'package:responsive_dash_bord/widgets/income_section_body.dart';
import 'package:responsive_dash_bord/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        cild: Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}
