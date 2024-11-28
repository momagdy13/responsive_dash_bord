import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/transction_model.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});

  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transctionModel.date,
          style: AppStyle.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyle.styleSemiBold20.copyWith(
            color: transctionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
