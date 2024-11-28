import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';
import 'package:responsive_dash_bord/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExpensesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(itemModel: itemModel)
        : InActiveItem(itemModel: itemModel);
  }
}

class InActiveItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;

  const InActiveItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imgColor: const Color(0xff4EB7F2),
              image: itemModel.image,
              color: const Color(0xFFFAFAFA),
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.title,
              style: AppStyle.styleSemiBold16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyle.styleRegular12,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              itemModel.price,
              style: AppStyle.styleBold16,
            )
          ],
        ));
  }
}

class ActiveItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;

  const ActiveItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imgColor: Colors.white,
              image: itemModel.image,
              color: const Color(0xff4EB7F2),
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              itemModel.title,
              style: AppStyle.styleMedium20,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              itemModel.date,
              style: AppStyle.styleRegular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              itemModel.price,
              style: AppStyle.styleMedium20,
            )
          ],
        ));
  }
}
