import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';
import 'package:responsive_dash_bord/widgets/transction_history_list_view.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TansctionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: TextStyle(
            color: Color(0xFFAAAAAA),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20,
        ),
        Text(
          'See all',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
