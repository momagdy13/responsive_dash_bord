import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/all_expenses_item_model.dart';
import 'package:responsive_dash_bord/utlis/app_images.dart';
import 'package:responsive_dash_bord/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});
  static var items = [
    AllExpensesItemModel('Balance', 'April 2022', r'$20,129',
        image: Assets.imagesMoneys),
    AllExpensesItemModel('Income', 'April 2022', r'$20,129',
        image: Assets.imagesCardReceive),
    AllExpensesItemModel('Expenses', 'April 2022', r'$20,129',
        image: Assets.imagesCardSend),
  ];

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final bool isActive = false;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesBody.items.asMap().entries.map(
      (e) {
        int index = e.key;
        if (index == 1) {
          return Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                      onTap: () {
                        if (index != activeIndex) {
                          setState(() {
                            activeIndex = index;
                          });
                        }
                      },
                      child: AllExpensesItem(
                          isActive: activeIndex == index,
                          itemModel: AllExpensesBody.items[index]))));
        } else {
          return Expanded(
              child: GestureDetector(
                  onTap: () {
                    if (index != activeIndex) {
                      setState(() {
                        activeIndex = index;
                      });
                    }
                  },
                  child: AllExpensesItem(
                      isActive: activeIndex == index,
                      itemModel: AllExpensesBody.items[index])));
        }
      },
    ).toList());
  }
}
