import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/models/latest_trans_model.dart';
import 'package:responsive_dash_bord/utlis/app_images.dart';
import 'package:responsive_dash_bord/utlis/app_style.dart';
import 'package:responsive_dash_bord/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_bord/widgets/user_info_list.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});
  static const items = [
    LatestTransModel(
        email: 'Madraniadi20@gmail',
        name: 'Madrani Andi',
        image: Assets.imagesAvtar),
    LatestTransModel(
        email: 'Madraniadi20@gmail',
        name: 'Madrani Andi',
        image: Assets.imagesAvtar),
    LatestTransModel(
        email: 'Madraniadi20@gmail',
        name: 'Madrani Andi',
        image: Assets.imagesAvtar),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Quick Incoice",
              style: AppStyle.styleSemiBold20,
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(12),
              width: 48,
              height: 48,
              decoration: const ShapeDecoration(
                  color: Color(0xFFFAFAFA), shape: OvalBorder()),
              child: const Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            )
          ],
        ),
        const Text(
          "Latest Transaction",
          style: AppStyle.styleMedium16,
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items
                .map((e) =>
                    IntrinsicWidth(child: UserInfoList(latestTransModel: e)))
                .toList(),
          ),
        ),
        const Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        const QuickInvoiceForm()
      ],
    );
  }
}



// Way to solve width when u use listView
/**
 * 
 *   SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return IntrinsicWidth(
                      child: UserInfoList(latestTransModel: items[index]));
                },
              ),
            )
 */